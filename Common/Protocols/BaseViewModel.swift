//
//  BaseViewModel.swift
//  Common
//
//  Created by Maksim Kalik on 10/16/22.
//

import Foundation

public protocol BaseViewModel: AnyObject {
    associatedtype D: Dependencies
    
    var dependencies: D { get }
    var viewDelegate: BaseViewModelViewDelegate? { get set }

    func someCommonServiceMethod()
}

public extension BaseViewModel {

    var viewDelegate: BaseViewModelViewDelegate? {
        get { nil }
        set {}
    }
    
    func someCommonServiceMethod() {
        dependencies.commonServiceTwo.commonServiceTwoMethod()
    }
}

