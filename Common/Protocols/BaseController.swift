//
//  BaseController.swift
//  Common
//
//  Created by Maksim Kalik on 10/16/22.
//

import UIKit

public protocol BaseController: AnyObject {
    
    var view: UIView! { get set }
    var progressView: ProgressView { get set }
    var navigationController: UINavigationController? { get }

    func showActivityIndicator()
    func hideActivityIndicator()
}

public extension BaseController {
    func showActivityIndicator() {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else { return }
            self.view.addSubview(self.progressView)
        }
    }
    
    func hideActivityIndicator() {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else { return }
            self.progressView.removeFromSuperview()
        }
    }
}
