//
//  AppServiceOne.swift
//  AppOne
//
//  Created by Maksim Kalik on 10/16/22.
//

import Foundation

protocol AppServiceOne {
    func appServiceOneMethod()
}

final class AppServiceOneImplementation: AppServiceOne {

    private let dependencies: AppDependencies

    init(dependencies: AppDependencies) {
        self.dependencies = dependencies
    }

    func appServiceOneMethod() {
        print("== App Service 1 method fired")
    }
}
