import Foundation
import UIKit

class LoadingButton: UIButton {
    
    init(text:String) {
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = .systemGreen
        self.setTitle("ViewCode: \(text) ", for: .normal)
        self.setTitleColor(UIColor.init(white: 1, alpha: 0.3), for: .highlighted)
        self.layer.cornerRadius = 4.0
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private lazy var activityIndicator: UIActivityIndicatorView = {
        let activityIndicator = UIActivityIndicatorView()
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
        activityIndicator.color = .black
        addSubview(activityIndicator)
        
        NSLayoutConstraint.activate([
            activityIndicator.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            activityIndicator.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        ])
        
        return activityIndicator
    }()
    
    func loading(_ isLoading: Bool) {        
        if isLoading {
            activityIndicator.startAnimating()
        } else {
            activityIndicator.stopAnimating()
        }
    }
}


