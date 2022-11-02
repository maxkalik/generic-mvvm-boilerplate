//
//  SecondaryHostingController.swift
//  AppOne
//
//  Created by Maksim Kalik on 10/16/22.
//

import SwiftUI
import Common

final class SecondaryHostingController<ViewModel: SecondaryViewModel>:
    BaseHostingController<ViewModel, SecondaryView<ViewModel>> {

    init(viewModel: ViewModel) {
        let rootView = SecondaryView(viewModel: viewModel)
        super.init(viewModel: viewModel, rootView: rootView)
        viewModel.viewDelegate = self
    }
    
    required dynamic public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.viewDidLoad()
    }
}

// MARK: - SecondaryViewModelViewDelegate

extension SecondaryHostingController: SecondaryViewModelViewDelegate {
    func secondaryViewModelMethod<ViewModel>(_ viewModel: ViewModel) where ViewModel : SecondaryViewModel {
        print("== \(#function)")
    }
}
