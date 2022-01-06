import Foundation
import UIKit


class ViewCode_LoginView:ViewCodeBase {
    
    private(set) var logoImageView = UIImageView()
    private(set) var titleLabel = UILabel()
    private(set) var subTitleLabel = UILabel()
    private(set) var emailTextFiel = UITextField()
    private(set) var passwordTextFiel = UITextField()
    private(set) var forgotPasswordLabel = UILabel()
    private(set) var button = LoadingButton(text: "Login")
    
    override func buildHierarchy() {
        self.addSubview(logoImageView)
        self.addSubview(titleLabel)
        self.addSubview(subTitleLabel)
        self.addSubview(emailTextFiel)
        self.addSubview(passwordTextFiel)
        self.addSubview(forgotPasswordLabel)
        self.addSubview(button)
    }
    
    override func setupConstraints() {
        NSLayoutConstraint.activate([
            
            
            logoImageView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor,constant: 80),
            logoImageView.widthAnchor.constraint(equalToConstant: 74),
            logoImageView.heightAnchor.constraint(equalToConstant: 74),
            logoImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            titleLabel.topAnchor.constraint(equalTo: logoImageView.bottomAnchor,constant: 20),
            titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -20),
            
            subTitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor,constant: 0),
            subTitleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 20),
            subTitleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -20),

            emailTextFiel.topAnchor.constraint(equalTo: subTitleLabel.bottomAnchor,constant: 70),
            emailTextFiel.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 20),
            emailTextFiel.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -20),
            emailTextFiel.heightAnchor.constraint(equalToConstant: 50),

            passwordTextFiel.topAnchor.constraint(equalTo: emailTextFiel.bottomAnchor,constant: 15),
            passwordTextFiel.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 20),
            passwordTextFiel.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -20),
            passwordTextFiel.heightAnchor.constraint(equalToConstant: 50),

            forgotPasswordLabel.topAnchor.constraint(equalTo: passwordTextFiel.bottomAnchor,constant: 10),
            forgotPasswordLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 20),
            forgotPasswordLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -20),

            button.topAnchor.constraint(equalTo: forgotPasswordLabel.bottomAnchor,constant: 40),
            button.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 20),
            button.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -20),
            
            
        ])
    }
    
    override func configureViews() {
        self.backgroundColor = .white
        
        
        let logoImage =  UIImage(systemName: "bonjour")
        logoImage?.withRenderingMode(.alwaysTemplate)
        
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        logoImageView.image = logoImage
        logoImageView.tintColor = .systemGreen
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = "SwiftUI & UIKit"
        titleLabel.textAlignment = .center
        titleLabel.font = UIFont.preferredFont(forTextStyle: .title1)
        titleLabel.font = UIFont.boldSystemFont(ofSize: titleLabel.font.pointSize)
        titleLabel.textColor = .systemGreen
        
        subTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        subTitleLabel.text = "Simple login page with UIKit Viewcode"
        subTitleLabel.textAlignment = .center
        subTitleLabel.font = UIFont.preferredFont(forTextStyle: .subheadline)
        
        emailTextFiel.translatesAutoresizingMaskIntoConstraints = false
        emailTextFiel.placeholder = "Email"
        emailTextFiel.backgroundColor = UIColor.gray.withAlphaComponent(0.2)
        emailTextFiel.layer.cornerRadius = 4.0
        emailTextFiel.layer.sublayerTransform = CATransform3DMakeTranslation(5, 0, 0)
        
        passwordTextFiel.translatesAutoresizingMaskIntoConstraints = false
        passwordTextFiel.placeholder = "Password"
        passwordTextFiel.backgroundColor = UIColor.gray.withAlphaComponent(0.2)
        passwordTextFiel.layer.cornerRadius = 4.0
        passwordTextFiel.layer.sublayerTransform = CATransform3DMakeTranslation(5, 0, 0)

        forgotPasswordLabel.translatesAutoresizingMaskIntoConstraints = false
        forgotPasswordLabel.text = "Forgot password?"
        forgotPasswordLabel.textAlignment = .right
        forgotPasswordLabel.font = UIFont.systemFont(ofSize: 15)
        forgotPasswordLabel.textColor = .gray
    }
}


//this is a Live preview for UIKit CodeView
import SwiftUI
struct ViewCode_LoginView_Previews: PreviewProvider {
    static var previews: some View {
        ViewPreview {
            ViewCode_LoginView()
        }
    }
}
