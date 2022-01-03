import Foundation
import UIKit

class ViewCode_CustomButton: UIButton {
    
    init(text:String) {
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = .systemGreen
        self.setTitle("ViewCode: \(text) ", for: .normal)
        self.setTitleColor(UIColor.init(white: 1, alpha: 0.3), for: .highlighted)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


