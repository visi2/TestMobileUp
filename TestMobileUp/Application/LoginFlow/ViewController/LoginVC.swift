import UIKit

final class LoginVC: UIViewController {
    // MARK: - Visual Components
    
    private var loginView: LoginView { return self.view as! LoginView}
    
    // MARK: - Public Properties

    weak var presenter: (AnyObject)?
    
    // MARK: - Lifecycle
    
    override func loadView() {
        super.loadView()
        
        view = LoginView()
    }
}
