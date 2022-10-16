//
//  BaseButton.swift
//  Common
//
//  Created by Maksim Kalik on 10/16/22.
//

import UIKit

open class BaseButton: UIButton {
    
    public convenience init(squareOf value: Int) {
        self.init(type: .system)
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setupCommon()
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupCommon() {
        titleLabel?.font = .systemFont(ofSize: 17, weight: .bold)
        backgroundColor = .black
        layer.cornerRadius = 10
    }
    
    public override func didMoveToSuperview() {
        super.didMoveToSuperview()
        if let superview = self.superview {
            setTitleColor(superview.backgroundColor, for: .normal)
        }
    }
}
