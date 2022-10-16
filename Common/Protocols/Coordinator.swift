//
//  Coordinator.swift
//  Common
//
//  Created by Maksim Kalik on 10/16/22.
//

import UIKit

public protocol Coordinator {
    associatedtype D: Dependencies
    var dependencies: D { get }
    
    var navigationController: BaseNavigationController? { get }

    func start()
}

public extension Coordinator {
    func extensionTestMethod() {
        dependencies.commonServiceOne.commonServiceOneMethod()
    }
}
