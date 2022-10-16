//
//  BaseController.swift
//  Common
//
//  Created by Maksim Kalik on 10/16/22.
//

import UIKit

public protocol BaseController: AnyObject {
    
    var view: UIView! { get set }
    var navigationController: UINavigationController? { get }
    
    associatedtype ViewModel: BaseViewModel
    var viewModel: ViewModel { get set }
    
    func showActivityIndicator()
    func hideActivityIndicator()
}

public extension BaseController {
    func showActivityIndicator() {
        print("show activity indicator")
    }
    
    func hideActivityIndicator() {
        print("hide activity indicator")
    }
}
