//
//  ViewController.swift
//  IOS HW-11-1 Oksana Kazarinova
//
//  Created by Oksana Kazarinova on 01/04/2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var BGImage: UIImageView!
    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var dontHaveAcountAndSignUp: UIStackView!
    @IBOutlet weak var socialMediaButtons: UIStackView!
    @IBOutlet weak var linesAndConnectWith: UIStackView!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    @IBOutlet weak var messengerChosingLabel: UILabel!
    @IBOutlet weak var lineOne: UIView!
    @IBOutlet weak var lineTwo: UIView!
    @IBOutlet weak var facebookButton: UIButton!
    @IBOutlet weak var twitterButton: UIButton!
    @IBOutlet weak var dontHaveAccountLabel: UILabel!
    @IBOutlet weak var signUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userName.setTextFieldShape()
        password.setTextFieldShape()
        loginButton.setButtonShape()
        facebookButton.setButtonShape()
        twitterButton.setButtonShape()
        loginButton.setButtonShadow()
        facebookButton.setButtonShadow()
        twitterButton.setButtonShadow()
        userName.setLeftIcon(loadSFImage(name: "person") ?? UIImage.remove)
        userName.setRightIcon(loadSFImage(name: "checkmark.circle.fill") ?? UIImage.remove)
        password.setLeftIcon(loadSFImage(name: "lock") ?? UIImage.remove)
        setupHierarchy()
    }


// MARK: - Setups

    private func setupHierarchy() {
        view.addSubview(BGImage)
        view.addSubview(loginLabel)
        view.addSubview(userName)
        view.addSubview(password)
        view.addSubview(loginButton)
        view.addSubview(forgotPasswordButton)
//        view.addSubview(lineOne)
//        view.addSubview(lineTwo)
//        view.addSubview(messengerChosingLabel)
        view.addSubview(linesAndConnectWith)
//        view.addSubview(facebookButton)
//        view.addSubview(twitterButton)
        view.addSubview(socialMediaButtons)
//        view.addSubview(dontHaveAccountLabel)
//        view.addSubview(signUpButton)
        view.addSubview(dontHaveAcountAndSignUp)
    }

// MARK: - Additional method

    private func loadSFImage(name: String) -> UIImage? {
        let image = UIImage(systemName: name, withConfiguration: UIImage.SymbolConfiguration(pointSize: 35, weight: .medium, scale: .medium))?.withTintColor(.clear, renderingMode: .automatic)
        return image
    }
}

// MARK: - Extensions

extension UITextField {
    func setLeftIcon(_ image: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: 10, y: 5, width: 20, height: 20))
        iconView.image = image
        iconView.tintColor = .gray
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 30, height: 30))
        iconContainerView.addSubview(iconView)
        leftView = iconContainerView
        leftViewMode = .always
    }
}

extension UITextField {
    func setRightIcon(_ image: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: 2, y: 5, width: 20, height: 20))
        iconView.image = image
        iconView.tintColor = .systemGreen
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 30, height: 30))
        iconContainerView.addSubview(iconView)
        rightView = iconContainerView
        rightViewMode = .always
    }
}

extension UIButton {
    func setButtonShape() {
        self.layer.cornerRadius = 17
        self.layer.masksToBounds = true
    }
}

extension UITextField {
    func setTextFieldShape() {
        self.layer.cornerRadius = 17
        self.layer.masksToBounds = true
    }
}

extension UIButton {
    func setButtonShadow() {
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOpacity = 0.3
        self.layer.shadowOffset = .zero
        self.layer.shadowRadius = 10
        self.layer.shouldRasterize = true
        self.layer.masksToBounds = false
        self.layer.rasterizationScale = UIScreen.main.scale
    }
}
