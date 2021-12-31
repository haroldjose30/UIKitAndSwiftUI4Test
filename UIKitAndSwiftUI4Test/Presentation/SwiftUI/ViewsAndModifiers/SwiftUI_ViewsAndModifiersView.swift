import SwiftUI

struct SwiftUI_ViewsAndModifiersView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Views & Modifiers")
                .font(.largeTitle)
            
            Text("Concepts")
                .font(.title)
                .foregroundColor(.gray)
            
            
            Text("Building a UI... Building a UI... Building a UI... Building a UI... Building a UI... Building a UI...")
                .frame(maxWidth: .infinity)
                .font(.title)
                .background(Color.orange)
            
            
            Button(action: {
                // Your code here
                print("Button pressed")
            }) {
                Text("Button With Shadow")
                    .font(.title)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.orange)
                    .cornerRadius(20)
                    .shadow(color: Color.gray, radius: 20, y: 5)
            }
            
            
            Image(systemName: "hand.thumbsup.fill")
                .font(.largeTitle)
            
            
        }
    }
}

struct ViewsAndModifiersView_Previews: PreviewProvider {
    static var previews: some View {
        
        let devices = [
            "iPhone 13 mini",
            "iPad (9th generation)"
        ]
        
        let viewToPreview = SwiftUI_ViewsAndModifiersView()
        
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
