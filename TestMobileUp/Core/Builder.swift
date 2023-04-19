import UIKit

enum ModuleBuilder {
    
    static func loginBuild() -> UIViewController {
        let view = LoginVC()
        let presenter = LoginPresenter(view: view)
        view.presenter = presenter
        return view
    }
}
