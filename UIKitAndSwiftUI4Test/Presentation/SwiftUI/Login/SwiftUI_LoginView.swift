import Foundation
import SwiftUI
import Combine

struct SwiftUI_LoginView : View {
    
    var loginViewModel: SwiftUI_LoginViewModelType
    
    @State var email: String = ""
    @State var password: String = ""
    @State var infoMessage: String = ""
    
    var body: some View {
        VStack {
            Image(systemName: "bonjour")
                .resizable()
                .aspectRatio(contentMode: ContentMode.fit)
                .frame(width: 74.0, height: 74.0)
                .foregroundColor(.green)
                .padding(.bottom, 20)
            
            Text("UIKit & SwiftUI")
                .bold()
                .foregroundColor(.green)
                .font(.title)
            
            Text("Simple login page with SwiftUI")
                .font(.subheadline)
                .padding(.bottom,70)
            
            TextField("Email", text: $email)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(4.0)
                .padding(.bottom,15)
            
            SecureField("Password", text: $password)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(4.0)
                .padding(.bottom, 10)
            
            HStack() {
                Spacer()
                
                Text("Forgot Password?")
                    .font(.system(size: 15))
                    .foregroundColor(.gray)
                
            }.padding(.bottom, 40)
            
            Button(action: loginAction) {
                HStack(alignment: .center) {
                    Spacer()
                    Text("Login")
                        .foregroundColor(Color.white)
                        .bold()
                    Spacer()
                }
            }.padding()
                .background(Color.green)
                .cornerRadius(4.0)
            
            Text(self.infoMessage)
            
        }.padding()
    }
    
    func loginAction() {
        infoMessage = loginViewModel.performLoginAction(email: self.email, password: self.password)
    }
    
}

struct SwiftUI_LoginView_Previews: PreviewProvider {
    static var previews: some View {
        
        let devices = [
            "iPhone 13 mini",
            "iPad (9th generation)",
            "iPhone 8"
        ]
        
        let viewToPreview = SwiftUI_LoginView(loginViewModel: SwiftUI_LoginViewModel())
        
        viewToPreview
            .preferredColorScheme(.light)
            .previewDisplayName("light Mode")
        
        viewToPreview
            .preferredColorScheme(.dark)
            .previewDisplayName("dark Mode")
        
        if #available(iOS 15.0, *) {
            viewToPreview
                .previewInterfaceOrientation(.landscapeRight)
                .previewDisplayName("landscapeRight")
        }
        
        ForEach(devices, id: \.self) { device in
            viewToPreview
                .previewDevice(PreviewDevice(rawValue: device))
                .previewDisplayName(device)
        }
        
    }
}
