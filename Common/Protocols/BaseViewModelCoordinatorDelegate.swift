//
//  BaseViewModelCoordinatorDelegate.swift
//  Common
//
//  Created by Maksim Kalik on 10/16/22.
//

import Foundation

public protocol BaseViewModelCoordinatorDelegate: AnyObject {
    func viewModelDidFinish<ViewModel: BaseViewModel>(_ viewModel: ViewModel)
}

public extension BaseViewModelCoordinatorDelegate where Self: Coordinator {
    func viewModelDidFinish<ViewModel: BaseViewModel>(_ viewModel: ViewModel) {
        self.finish()
    }
}
