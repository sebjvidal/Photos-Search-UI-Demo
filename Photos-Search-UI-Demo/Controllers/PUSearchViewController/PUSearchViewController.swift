//
//  PUSearchViewController.swift
//  Photos-Search-UI-Demo
//
//  Created by Seb Vidal on 22/06/2024.
//

import UIKit

class PUSearchViewController: UIViewController {
    private var backgroundView: UIVisualEffectView!
    private var keyboardBackdropView: UIKBVisualEffectView!
    private var searchBar: PUSearchBar!
    private var titleLabel: UILabel!
    
    override init(nibName: String?, bundle: Bundle?) {
        super.init(nibName: nibName, bundle: bundle)
        setupBackgroundView()
        setupTapGestureRecognizer()
        setupKeyboardBackdropView()
        setupSearchBar()
        setupTitleLabel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupBackgroundView() {
        backgroundView = UIVisualEffectView()
        backgroundView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(backgroundView)
        
        NSLayoutConstraint.activate([
            backgroundView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    private func setupTapGestureRecognizer() {
        let tapGestureRecognizer = UITapGestureRecognizer()
        tapGestureRecognizer.addTarget(self, action: #selector(tapGestureRecognized))
        
        backgroundView.addGestureRecognizer(tapGestureRecognizer)
    }
    
    @objc private func tapGestureRecognized(_ sender: UITapGestureRecognizer) {
        dismiss(animated: true)
    }
    
    private func setupKeyboardBackdropView() {
        keyboardBackdropView = UIKBVisualEffectView(frame: .zero, style: 2030)
        keyboardBackdropView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(keyboardBackdropView)
        
        NSLayoutConstraint.activate([
            keyboardBackdropView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            keyboardBackdropView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            keyboardBackdropView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    private func setupSearchBar() {
        searchBar = PUSearchBar()
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(searchBar)
        
        NSLayoutConstraint.activate([
            searchBar.topAnchor.constraint(equalTo: keyboardBackdropView.topAnchor, constant: 18),
            searchBar.leadingAnchor.constraint(equalTo: keyboardBackdropView.leadingAnchor, constant: 15),
            searchBar.trailingAnchor.constraint(equalTo: keyboardBackdropView.trailingAnchor, constant: -15),
            searchBar.bottomAnchor.constraint(equalTo: view.keyboardLayoutGuide.topAnchor, constant: -18)
        ])
    }
    
    private func setupTitleLabel() {
        titleLabel = UILabel()
        titleLabel.text = "Search"
        titleLabel.font = .systemFont(ofSize: 34, weight: .bold)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(titleLabel)
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24)
        ])
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        transitionCoordinator?.animate { [unowned self] _ in
            searchBar.becomeFirstResponder()
            backgroundView.effect = UIBlurEffect(style: .regular)
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        transitionCoordinator?.animate { [unowned self] _ in
            backgroundView.effect = nil
        }
    }
}
