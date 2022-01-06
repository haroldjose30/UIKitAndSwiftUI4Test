import Foundation
import UIKit


class ViewCode_LoginViewController: UIViewController {
    let myView = ViewCode_LoginView()
    var loading:Bool = false
    
    override func loadView() {
        super.loadView()
        view = myView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupButtonsAndActions()
    }
    
    func setupButtonsAndActions()  {
        myView.button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
    }
    
    @objc func buttonAction(){
        self.loading = !self.loading
        self.myView.button.loading(self.loading)
    }
}


//import SwiftUI
//struct ViewCode_LoginViewController_Previews: PreviewProvider {
//    static var previews: some View {
//        ViewControllerPreview {
//            ViewCode_LoginViewController()
//        }
//    }
//}
