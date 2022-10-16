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
        
    func viewDidLoad()
    func viewWillAppear()
    func viewWillDisapear()
    func viewDidAppear()
    func viewDidDisappear()
    
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

public extension BaseViewModel {
    func viewDidLoad() {
        assertionFailure("WARNING: '\(#function) method should be implemented in \(String(describing: type(of: self)))")
    }

    func viewWillAppear() {
        assertionFailure("WARNING: '\(#function) method should be implemented in \(String(describing: type(of: self)))")
    }
    
    func viewWillDisapear() {
        assertionFailure("WARNING: '\(#function) method should be implemented in \(String(describing: type(of: self)))")
    }

    func viewDidAppear() {
        assertionFailure("WARNING: '\(#function) method should be implemented in \(String(describing: type(of: self)))")
    }
    
    func viewDidDisappear() {
        assertionFailure("WARNING: '\(#function) method should be implemented in \(String(describing: type(of: self)))")
    }
}
