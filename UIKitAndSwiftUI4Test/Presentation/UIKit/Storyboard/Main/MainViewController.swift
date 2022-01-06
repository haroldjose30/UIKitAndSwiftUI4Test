import UIKit
import SwiftUI

class MainViewController: UIViewController {
    
    @IBAction func loginStoryBoardAction(_ sender: Any) {
        print("LOG:loginStoryBoardAction")
    }
    
    @IBAction func loginViewCodeAction(_ sender: Any) {
        print("LOG:loginViewCodeAction")
        let viewController = ViewCode_LoginViewController()
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func loginSwiftUIButtonAction(_ sender: Any) {
        print("LOG:loginSwiftUIButtonAction")
        let swiftUIView = SwiftUI_LoginView(loginViewModel: SwiftUI_LoginViewModel())
        let viewController = SwiftUI_LoginViewController(rootView: swiftUIView)
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func UiKitInsideSwiftUIAction(_ sender: Any) {
        print("LOG:UiKitInsideSwiftUIAction")
        let swiftUIView = SwiftUI_WithUIKitComponents()
        let viewController = UIHostingController(rootView: swiftUIView)
        self.navigationController?.pushViewController(viewController, animated: true)
    }
}
