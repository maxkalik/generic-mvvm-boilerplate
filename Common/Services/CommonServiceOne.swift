//
//  CommonServiceOne.swift
//  Common
//
//  Created by Maksim Kalik on 10/16/22.
//

import Foundation

public protocol CommonServiceOne {
    func commonServiceOneMethod()
}

final class CommonServiceOneImpementation: CommonServiceOne {

    private var dependencies: Dependencies

    init(dependencies: Dependencies) {
        self.dependencies = dependencies
    }

    func commonServiceOneMethod() {
        print("== Common Service 1 method fired from \(dependencies.appId)")
    }
}
