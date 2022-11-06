//
//  Coordinator.swift
//  Common
//
//  Created by Maksim Kalik on 10/16/22.
//

import UIKit

public protocol Coordinator: AnyObject {
    
    var navigationController: BaseNavigationController? { get }

    func start()
    func finish()
}

public extension Coordinator {
    func show<ViewController: UIViewController>(_ viewController: ViewController) {
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    func finish() {
        self.navigationController?.popViewController(animated: true)
    }
}
