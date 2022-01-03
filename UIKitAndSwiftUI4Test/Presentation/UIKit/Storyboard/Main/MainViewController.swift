import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var loginSwiftUIButton: UIButton!
    
    @IBAction func loginSwiftUIButtonAction(_ sender: Any) {
        let swiftUIView = SwiftUI_LoginView(loginViewModel: SwiftUI_LoginViewModel())
        let viewController = SwiftUI_LoginViewController(rootView: swiftUIView)
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func loginViewCodeAction(_ sender: Any) {
        let viewController = ViewCode_LoginViewController()
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func loginStoryBoardAction(_ sender: Any) {
        print("loginStoryBoardAction")
    }
}
