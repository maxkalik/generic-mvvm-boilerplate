//
//  AppServiceTwo.swift
//  AppOne
//
//  Created by Maksim Kalik on 10/16/22.
//

import Foundation

protocol AppServiceTwo {
    func appServiceTwoMethod()
}

final class AppServiceTwoImplementation: AppServiceTwo {

    private var dependencies: AppDependencies

    init(dependencies: AppDependencies) {
        self.dependencies = dependencies
    }

    func appServiceTwoMethod() {
        print("App Service Two method fired")
    }
}
