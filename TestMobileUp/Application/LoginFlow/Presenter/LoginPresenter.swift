import UIKit

class LoginPresenter {
    // MARK: - Public Properties
    
    weak var viewInput: UIViewController?
    
    // MARK: - Initialization
    
    init(view: UIViewController) {
        self.viewInput = view
    }
}
