//
//  HomeViewModel.swift
//  AppOne
//
//  Created by Maksim Kalik on 10/16/22.
//

import Foundation
import Common

// MARK: - Coordinator Delegate

protocol HomeViewModelCoordinatorDelegate: BaseViewModelCoordinatorDelegate {
    func homeViewModelShouldShowSecondary<ViewModel: HomeViewModel>(_ viewModel: ViewModel)
}

// MARK: - View Delegate

protocol HomeViewModelViewDelegate: BaseViewModelViewDelegate { }

// MARK: - View Model

protocol HomeViewModel: BaseViewModel {
    var viewDelegate: HomeViewModelViewDelegate? { get set }
    var secondaryViewModel: any SecondaryViewModel { get }
    
    func buttonTap()
}

// MARK: - View Model Implementation

final class HomeViewModelImplementation<Dependeincies: AppDependencies>: HomeViewModel, WithDependencies {

    weak var viewDelegate: HomeViewModelViewDelegate?
    let dependencies: Dependeincies
    var coordinatorDelegate: HomeViewModelCoordinatorDelegate?
    var secondaryViewModel: any SecondaryViewModel
    
    init(dependencies: Dependeincies) {
        self.dependencies = dependencies
        self.secondaryViewModel = SecondaryViewModelImplementation(dependencies: dependencies)
    }
    
    func buttonTap() {
        self.viewDelegate?.viewModelShowActivityIndicator(self)
        self.someCommonServiceMethod()
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) { [weak self] in
            guard let self = self else { return }
            self.viewDelegate?.viewModelHideActivityIndicator(self)
            self.coordinatorDelegate?.homeViewModelShouldShowSecondary(self)
        }
    }
}
