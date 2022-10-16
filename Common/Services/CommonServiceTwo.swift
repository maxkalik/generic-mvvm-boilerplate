//
//  CommonServiceTwo.swift
//  Common
//
//  Created by Maksim Kalik on 10/16/22.
//

import Foundation

public protocol CommonServiceTwo {
    func commonServiceTwoMethod()
}

final class CommonServiceTwoImpementation: CommonServiceTwo {

    private var dependencies: Dependencies

    init(dependencies: Dependencies) {
        self.dependencies = dependencies
    }

    func commonServiceTwoMethod() {
        print("Common Service Two method fired")
    }
}
