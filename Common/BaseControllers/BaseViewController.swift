//
//  BaseViewController.swift
//  Common
//
//  Created by Maksim Kalik on 10/16/22.
//

import UIKit

open class BaseViewController: UIViewController, BaseController {
    
    public lazy var progressView = ProgressView()

    deinit {
        print("DEINIT \(self)")
    }
}
