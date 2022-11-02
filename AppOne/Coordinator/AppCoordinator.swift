//
//  AppCoordinator.swift
//  AppOne
//
//  Created by Maksim Kalik on 10/16/22.
//

import UIKit
import Common

protocol AppCoordinator: Coordinator {
    
}

// MARK: - Coordinator Implementation

final class AppCoordinatorImplementation<Dependencies: AppDependencies>: AppCoordinator, WithDependencies {
    
    var navigationController: BaseNavigationController?
    let dependencies: Dependencies
    
    init(dependencies: Dependencies, navigationController: BaseNavigationController) {
        self.dependencies = dependencies
        self.navigationController = navigationController
    }
    
    func start() {
        showHome()
    }
    
    func showHome() {
        let viewModel = HomeViewModelImplementation(dependencies: dependencies)
        viewModel.coordinatorDelegate = self
        let viewController = HomeViewController(viewModel: viewModel)
        self.show(viewController)
    }
    
    func showSecondary() {
        let viewModel = SecondaryViewModelImplementation(dependencies: dependencies)
        let viewController = SecondaryHostingController(viewModel: viewModel)
        self.show(viewController)
    }
}

// MARK: - HomeViewModelCoordinatorDelegate

extension AppCoordinatorImplementation: HomeViewModelCoordinatorDelegate {
    func homeViewModelShouldShowSecondary<ViewModel>(_ viewModel: ViewModel) where ViewModel : HomeViewModel {
        self.showSecondary()
    }
}
