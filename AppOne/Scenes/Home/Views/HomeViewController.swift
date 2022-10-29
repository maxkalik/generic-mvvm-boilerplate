//
//  HomeViewController.swift
//  AppOne
//
//  Created by Maksim Kalik on 10/16/22.
//

import UIKit
import Common

final class HomeViewController: BaseViewController {

    var viewModel: HomeViewModel
    
    private lazy var signInButton: BaseButton = {
        let button = BaseButton()
        button.setTitle("Sign In", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(signInTapped), for: .touchUpInside)
        return button
    }()
    
    init(viewModel: HomeViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
        self.viewModel.viewDelegate = self
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .orange
        setupViews()
    }
    
    private func setupViews() {
        view.addSubview(signInButton)
        
        NSLayoutConstraint.activate([
            signInButton.widthAnchor.constraint(equalToConstant: 150),
            signInButton.heightAnchor.constraint(equalToConstant: 50),
            signInButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            signInButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30),
        ])
    }
    
    @objc
    private func signInTapped() {
        viewModel.buttonTap()
    }
}

// MARK: - HomeViewModelViewDelegate

extension HomeViewController: HomeViewModelViewDelegate { }
