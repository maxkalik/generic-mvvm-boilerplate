//
//  BaseHostingController.swift
//  Common
//
//  Created by Maksim Kalik on 10/16/22.
//

import UIKit
import SwiftUI

open class BaseHostingController<ContentView: View>: UIHostingController<ContentView>, BaseController {

    public lazy var progressView = ProgressView()

    deinit {
        print("DEINIT \(self)")
    }

    open override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        progressView.center = view.center
    }
}
