import Foundation
import UIKit

class ViewCode_LoginViewController: UIViewController {
    let myView = ViewCode_LoginView()

    
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
        print("ViewCode_LoginView touched...")
    }
}
