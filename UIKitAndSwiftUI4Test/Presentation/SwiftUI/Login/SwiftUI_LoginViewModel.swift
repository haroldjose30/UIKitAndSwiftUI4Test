//
//  SwiftUI_LoginViewModel.swift
//  UIKitAndSwiftUI4Test
//
//  Created by Harold Jose Barros Gonçalves on 28/12/21.
//

import Foundation
import Combine

class SwiftUI_LoginViewModel: SwiftUI_LoginViewModelType {
    func performLoginAction(email:String,password:String) -> String {
        print("performLogin action with \(email) and \(password)")
        
        //login real implemented logic
        
        return "Login Success!"
    }
}


/*
 We can use @ObservableObject but some unspected behavior can happen in IOS 13
 
    Article: Why I quit using the ObservableObject:
    https://nalexn.github.io/swiftui-observableobject/
 
 In IOS 14 we can replace @ObservableObject by @StateObject:
    https://stackoverflow.com/questions/61676823/swiftui-observableobject-does-not-persist-its-state-over-being-redrawn
 
 
//Sample Code using ObservableObject in IOS13
class SwiftUI_LoginViewModel: ObservableObject {
    @Published var email:String = ""
    @Published var password:String = ""
    
    public func performLogin(){
 print("performLogin action with \(email) and \(password)")
    }
}
*/
