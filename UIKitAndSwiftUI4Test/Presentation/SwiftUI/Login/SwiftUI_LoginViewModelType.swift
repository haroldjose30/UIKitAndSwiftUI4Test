import Foundation
import Combine

public protocol SwiftUI_LoginViewModelType {
    func performLoginAction(email:String,password:String) -> String
}
