//
//  ViewController.swift
//  UIKitAndSwiftUI4Test
//
//  Created by Jose Harold on 21/12/2021.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var loginSwiftUIButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func loginSwiftUIButtonAction(_ sender: Any) {
        let swiftUIView = SwiftUI_LoginView(loginViewModel: SwiftUI_LoginViewModel())
        let hostingController = SwiftUI_LoginViewController(rootView: swiftUIView)
        self.navigationController?.pushViewController(hostingController, animated: true)
    }
    
    @IBAction func loginViewCodeAction(_ sender: Any) {
        print("loginViewCodeAction")
    }
    
    @IBAction func loginStoryBoardAction(_ sender: Any) {
        print("loginStoryBoardAction")
    }
}
