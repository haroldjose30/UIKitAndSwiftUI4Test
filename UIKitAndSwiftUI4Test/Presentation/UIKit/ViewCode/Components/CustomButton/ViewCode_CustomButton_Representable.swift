import Foundation
import SwiftUI

//1-Creating a struct that conforms to UIViewRepresentable.
struct ViewCode_CustomButton_Representable: UIViewRepresentable {
    //2-Defining one property that stores the text string we are working with.
    var text: String
    
    //3-Giving it a makeUIView() method that will return our text view.
    func makeUIView(context: Context) -> ViewCode_CustomButton {
        ViewCode_CustomButton(text: text)
    }
    
    //4-Adding a updateUIView() method that will be called whenever the data for the text view has changed.
    func updateUIView(_ uiView: ViewCode_CustomButton, context: Context) {
        
    }
}



