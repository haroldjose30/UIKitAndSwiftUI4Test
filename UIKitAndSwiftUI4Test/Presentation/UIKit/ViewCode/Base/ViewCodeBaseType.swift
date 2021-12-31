import Foundation
import UIKit

public protocol ViewCodeBaseType {
    func buildHierarchy()
    func setupConstraints()
    func configureViews()
}

extension ViewCodeBaseType {
    public func applyViewCode(){
        configureViews()
        buildHierarchy()
        setupConstraints()
    }
}
