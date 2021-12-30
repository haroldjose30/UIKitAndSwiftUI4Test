//
//  SwiftUI_LoginViewModel_Fake.swift
//  UIKitAndSwiftUI4Test
//
//  Created by Jose Harold on 29/12/2021.
//

import Foundation


class SwiftUI_LoginViewModel_Fake: SwiftUI_LoginViewModelType  {
    
    func performLoginAction(email:String,password:String) -> String {
        print("performLogin action with \(email) and \(password)")
        
        //login logic simulations
        if email.isEmpty || password.isEmpty {
            return "email and password is required!"
        }
        
        if email == "1"  || password == "1" {
            return "login success!"
        }
        
        return "login failed!"
        
        
    }
}
