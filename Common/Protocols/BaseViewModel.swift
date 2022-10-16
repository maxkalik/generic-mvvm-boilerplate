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

    func someServiceMethod()
}

public extension BaseViewModel {
    func someServiceMethod() {
        dependencies.commonServiceTwo.commonServiceTwoMethod()
    }
}
