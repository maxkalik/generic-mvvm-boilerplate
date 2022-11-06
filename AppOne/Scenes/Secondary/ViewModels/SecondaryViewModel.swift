//
//  SecondaryViewModel.swift
//  AppOne
//
//  Created by Maksim Kalik on 10/16/22.
//

import Foundation
import Common

// MARK: - View Delegate

protocol SecondaryViewModelViewDelegate: BaseViewModelViewDelegate {
    func secondaryViewModelMethod<ViewModel: SecondaryViewModel>(_ viewModel: ViewModel)
}

// MARK: - View Model

protocol SecondaryViewModel: ObservableObject, BaseViewModel {
    
    var title: String { get }
    var viewDelegate: SecondaryViewModelViewDelegate? { get set }
    
    func buttonTap()
}

// MARK: - View Model Implementation

final class SecondaryViewModelImplementation<Dependeincies: HasAppServiceOne & HasAppServiceTwo>: SecondaryViewModel, WithDependencies {
    
    weak var viewDelegate: SecondaryViewModelViewDelegate?
    
    @Published var title: String = ""
    
    let dependencies: Dependeincies
    
    init(dependencies: Dependeincies) {
        self.dependencies = dependencies
        prepareViewModel()
    }
    
    deinit {
        print("DEINIT \(self)")
    }
    
    func prepareViewModel() {
        self.dependencies.appServiceTwo.appServiceTwoMethod()
    }
    
    func viewDidLoad() {
        viewDelegate?.viewModelShowActivityIndicator(self)
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) { [weak self] in
            guard let self = self else { return }
            self.title = "Secondary View"
            self.viewDelegate?.viewModelHideActivityIndicator(self)
            self.viewDelegate?.secondaryViewModelMethod(self)
        }
    }
    
    func buttonTap() {
        print("***")
    }
}
