import SwiftUI

struct SwiftUI_WithUIKitComponents: View {
    var body: some View {
        VStack {
            ViewCode_CustomButton_Representable(text: "Called from SwiftUI")
                .frame(width: .none, height: 50, alignment: .center)
        }
    }
}

struct SwiftUI_WithUIKitComponents_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUI_WithUIKitComponents()
    }
}
