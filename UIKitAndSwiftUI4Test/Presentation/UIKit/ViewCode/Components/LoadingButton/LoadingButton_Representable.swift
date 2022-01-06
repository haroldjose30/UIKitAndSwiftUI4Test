import Foundation
import SwiftUI

struct LoadingButton_Representable: UIViewRepresentable {
    var text: String
    var loading:Bool
    
    func makeUIView(context: Context) -> LoadingButton {
        LoadingButton(text: text)
    }

    func updateUIView(_ uiView: LoadingButton, context: Context) {
        uiView.setTitle(text, for: .normal)
        uiView.loading(loading)
    }
}



