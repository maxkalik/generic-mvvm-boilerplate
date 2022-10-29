//
//  SecondaryHostingController.swift
//  AppOne
//
//  Created by Maksim Kalik on 10/16/22.
//

import SwiftUI
import Common

final class SecondaryHostingController<ViewModel: SecondaryViewModel>: BaseHostingController<SecondaryView<ViewModel>> {

    private let viewModel: ViewModel
    
    init(viewModel: ViewModel) {
        self.viewModel = viewModel
        let rootView = SecondaryView(viewModel: viewModel)
        super.init(rootView: rootView)
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

extension SecondaryHostingController: SecondaryViewModelViewDelegate {
    func secondaryViewModelMethod<ViewModel>(_ viewModel: ViewModel) where ViewModel : SecondaryViewModel {
        print(#function)
    }
}
