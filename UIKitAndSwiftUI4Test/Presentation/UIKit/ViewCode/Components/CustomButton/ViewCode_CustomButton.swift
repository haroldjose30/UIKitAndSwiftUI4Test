import Foundation
import UIKit

class ViewCode_CustomButton: UIButton {
    init() {
        super.init(frame: .zero)
        configureViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureViews(){
        self.backgroundColor = .blue
        self.setTitle("ViewCode Button", for: .normal)
    }
    
}
