import UIKit

final class LoginView: UIView {
    //MARK: - Visual Components
    
    private lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Mobile Up \nGallery"
        label.font = UIFont(name: "SFProText-Bold", size: 44)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var loginButton: UIButton = {
        let button = UIButton()
        let text = "Вход через VK"
        button.setTitle("Вход через VK", for: .normal)
        button.titleLabel?.font = UIFont(name: "SFProText-Medium", size: 15)
        button.backgroundColor = .black
        button.layer.cornerRadius = 12
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    // MARK: - Private Properties
    
    private var controller: LoginVC?
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        controller = LoginVC()
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Setting UI Methods
    
    private func setupUI() {
        
        self.backgroundColor = .white
        
        [nameLabel, loginButton].forEach({
            self.addSubview($0)
        })
        
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 140),
            nameLabel.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 24),
            nameLabel.widthAnchor.constraint(equalToConstant: 227),
            nameLabel.heightAnchor.constraint(equalToConstant: 106)
        ])
        
        NSLayoutConstraint.activate([
            loginButton.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            loginButton.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            loginButton.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -28),
            loginButton.heightAnchor.constraint(equalToConstant: 52)
        ])
    }
}


