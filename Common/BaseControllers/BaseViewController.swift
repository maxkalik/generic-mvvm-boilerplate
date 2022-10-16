//
//  BaseViewController.swift
//  Common
//
//  Created by Maksim Kalik on 10/16/22.
//

import UIKit

open class BaseViewController<ViewModel: BaseViewModel>: UIViewController, BaseController {
    
    public lazy var progressView = ProgressView()
    public var viewModel: ViewModel
    
    public init(viewModel: ViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    deinit {
        print("DEINIT \(self)")
    }
}
