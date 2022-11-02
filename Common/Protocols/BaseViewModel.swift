//
//  BaseViewModel.swift
//  Common
//
//  Created by Maksim Kalik on 10/16/22.
//

import Foundation

public protocol BaseViewModel: AnyObject {

    var viewDelegate: BaseViewModelViewDelegate? { get set }

    func getData()
    func prepareViewModel()
    func viewDidLoad()
    func viewWillAppear()
    func viewDidAppear()
    func viewWillDisappear()
    func viewDidDisappear()
}

public extension BaseViewModel {

    var viewDelegate: BaseViewModelViewDelegate? {
        get { nil }
        set {}
    }

    func getData() {
        assertionFailure("WARNING: '\(#function) method should be implemented in \(String(describing: type(of: self)))")
    }
    
    func prepareViewModel() {
        assertionFailure("WARNING: '\(#function) method should be implemented in \(String(describing: type(of: self)))")
    }
    
    func viewDidLoad() {
        assertionFailure("WARNING: '\(#function) method should be implemented in \(String(describing: type(of: self)))")
    }
    
    func viewWillAppear() {
        assertionFailure("WARNING: '\(#function) method should be implemented in \(String(describing: type(of: self)))")
    }
    
    func viewDidAppear() {
        assertionFailure("WARNING: '\(#function) method should be implemented in \(String(describing: type(of: self)))")
    }
    
    func viewWillDisappear() {
        assertionFailure("WARNING: '\(#function) method should be implemented in \(String(describing: type(of: self)))")
    }
    
    func viewDidDisappear() {
        assertionFailure("WARNING: '\(#function) method should be implemented in \(String(describing: type(of: self)))")
    }
}

public extension BaseViewModel {
    func baseViewModelMethod() {
        print("== BaseViewModel method fired")
    }
}

// MARK: - WithDependencies protocol

public extension BaseViewModel where Self: WithDependencies {
    func someCommonServiceMethod() {
        dependencies.commonServiceTwo.commonServiceTwoMethod()
    }
}
