//
//  BaseViewModelViewDelegate.swift
//  Common
//
//  Created by Maksim Kalik on 10/16/22.
//

import Foundation

public protocol BaseViewModelViewDelegate: AnyObject {
    func viewModelShowActivityIndicator<ViewModel: BaseViewModel>(_ viewModel: ViewModel)
    func viewModelHideActivityIndicator<ViewModel: BaseViewModel>(_ viewModel: ViewModel)
}

extension BaseViewModelViewDelegate where Self: BaseController {
    public func viewModelShowActivityIndicator<ViewModel: BaseViewModel>(_ viewModel: ViewModel) {
        showActivityIndicator()
    }
    
    public func viewModelHideActivityIndicator<ViewModel: BaseViewModel>(_ viewModel: ViewModel) {
        hideActivityIndicator()
    }
}
