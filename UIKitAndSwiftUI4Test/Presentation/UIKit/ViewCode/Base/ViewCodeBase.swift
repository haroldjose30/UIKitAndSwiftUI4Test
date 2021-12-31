import Foundation
import UIKit

open class ViewCodeBase: UIView,ViewCodeBaseType {
    
    public init() {
        super.init(frame: .zero)
        applyViewCode()
    }
    
    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    open func buildHierarchy() {}
    
    open func setupConstraints() {}
    
    open func configureViews() {}
}
