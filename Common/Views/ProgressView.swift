//
//  ProgressView.swift
//  Common
//
//  Created by Maksim Kalik on 10/16/22.
//

import UIKit

public final class ProgressView: UIView {
    
    private lazy var activityIndicator = {
        let activityIndicator = UIActivityIndicatorView()
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
        activityIndicator.startAnimating()
        return activityIndicator
    }()
    
    public override init(frame: CGRect) {
        super.init(frame: .zero)
        
        setupCommon()
        setupActivityIndicator()
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func didMoveToSuperview() {
        super.didMoveToSuperview()
        if let superview = self.superview {
            frame = CGRect(x: 0, y: 0, width: 80, height: 80)
            center = superview.center
            activityIndicator.color = superview.backgroundColor
        }
    }
}

// MARK: - Setup

private extension ProgressView {
    func setupCommon() {
        layer.cornerRadius = 20
        backgroundColor = .black.withAlphaComponent(0.5)
    }
    
    func setupActivityIndicator() {
        addSubview(activityIndicator)
        
        NSLayoutConstraint.activate([
            activityIndicator.centerXAnchor.constraint(equalTo: centerXAnchor),
            activityIndicator.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
}
