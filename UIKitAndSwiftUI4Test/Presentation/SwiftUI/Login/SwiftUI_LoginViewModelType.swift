//
//  SwiftUI_LoginViewModelType.swift
//  UIKitAndSwiftUI4Test
//
//  Created by Jose Harold on 29/12/2021.
//

import Foundation
import Combine

public protocol SwiftUI_LoginViewModelType {
    func performLoginAction(email:String,password:String) -> String
}
