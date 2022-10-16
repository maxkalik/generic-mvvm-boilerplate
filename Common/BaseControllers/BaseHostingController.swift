//
//  BaseHostingController.swift
//  Common
//
//  Created by Maksim Kalik on 10/16/22.
//

import UIKit
import SwiftUI

open class BaseHostingController<ViewModel: BaseViewModel, ContentView: View>: UIHostingController<ContentView>, BaseController {

    public var viewModel: ViewModel

    public init(viewModel: ViewModel, rootView: ContentView) {
        self.viewModel = viewModel
        super.init(rootView: rootView)
    }
    
    @objc
    required dynamic public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
