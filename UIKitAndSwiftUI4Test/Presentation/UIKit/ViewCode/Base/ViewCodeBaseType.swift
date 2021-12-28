//
//  ViewCodeBaseType.swift
//  UIKitAndSwiftUI4Test
//
//  Created by Harold Jose Barros Gonçalves on 27/12/21.
//

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
