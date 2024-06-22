//
//  PUSearchBar.swift
//  Photos-Search-UI-Demo
//
//  Created by Seb Vidal on 22/06/2024.
//

import UIKit

class PUSearchBar: UIView, UITextFieldDelegate {
    private var backgroundView: UIView!
    private var imageView: UIImageView!
    private var textField: UITextField!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupBackgroundView()
        setupImageView()
        setupTextField()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupBackgroundView() {
        backgroundView = UIView()
        backgroundView.clipsToBounds = true
        backgroundView.layer.cornerRadius = 16
        backgroundView.layer.cornerCurve = .continuous
        backgroundView.backgroundColor = .searchBar
        backgroundView.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(backgroundView)
        
        NSLayoutConstraint.activate([
            backgroundView.topAnchor.constraint(equalTo: topAnchor),
            backgroundView.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundView.trailingAnchor.constraint(equalTo: trailingAnchor),
            backgroundView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
    private func setupImageView() {
        imageView = UIImageView()
        imageView.tintColor = .secondaryLabel
        imageView.image = UIImage(systemName: "magnifyingglass")
        imageView.preferredSymbolConfiguration = UIImage.SymbolConfiguration(textStyle: .body)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.setContentHuggingPriority(.required, for: .horizontal)
        
        backgroundView.addSubview(imageView)
        
        NSLayoutConstraint.activate([
            imageView.leadingAnchor.constraint(equalTo: backgroundView.leadingAnchor, constant: 8),
            imageView.centerYAnchor.constraint(equalTo: backgroundView.centerYAnchor)
        ])
    }
    
    private func setupTextField() {
        textField = UITextField()
        textField.delegate = self
        textField.placeholder = "Search"
        textField.returnKeyType = .search
        textField.spellCheckingType = .no
        textField.autocorrectionType = .no
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        backgroundView.addSubview(textField)
        
        NSLayoutConstraint.activate([
            textField.topAnchor.constraint(equalTo: backgroundView.topAnchor, constant: 13),
            textField.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 9),
            textField.trailingAnchor.constraint(equalTo: backgroundView.trailingAnchor, constant: -13),
            textField.bottomAnchor.constraint(equalTo: backgroundView.bottomAnchor, constant: -13)
        ])
    }
    
    @discardableResult override func becomeFirstResponder() -> Bool {
        textField.becomeFirstResponder()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
}
