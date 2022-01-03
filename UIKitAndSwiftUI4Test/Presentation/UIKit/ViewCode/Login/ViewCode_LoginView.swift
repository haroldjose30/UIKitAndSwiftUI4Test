import Foundation
import UIKit

class ViewCode_LoginView:ViewCodeBase {
    
    var button = ViewCode_CustomButton(text: "Login")
    
    override func buildHierarchy() {
        self.addSubview(button)
    }
    
    override func setupConstraints() {
        NSLayoutConstraint.activate([
            button.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor,constant: 80),
            button.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 20),
            button.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -20),
        ])
    }
    
    override func configureViews() {
        self.backgroundColor = .white
    }
}
