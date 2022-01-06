import SwiftUI

struct SwiftUI_WithUIKitComponents: View {
    @State var loading = false
    var body: some View {
        VStack {
            Text("This is a SwiftUI Page")
            HStack {
                Spacer()
                LoadingButton_Representable(text: "UIKit Custom Button", loading: loading)
                    .frame(width: 100, height: 35)
                Spacer()
            }
            Spacer()
        }
    }
}

struct SwiftUI_WithUIKitComponents_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUI_WithUIKitComponents()
    }
}
