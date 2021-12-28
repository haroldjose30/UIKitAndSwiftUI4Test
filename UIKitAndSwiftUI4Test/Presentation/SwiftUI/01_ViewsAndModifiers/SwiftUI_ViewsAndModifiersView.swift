//
//  ViewsAndModifiersView.swift
//  UIKitAndSwiftUI4Test
//
//  Created by Harold Jose Barros Gonçalves on 27/12/21.
//



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
                print("teste")
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
        SwiftUI_ViewsAndModifiersView()
        
        SwiftUI_ViewsAndModifiersView()
            .preferredColorScheme(.dark)
    }
}
