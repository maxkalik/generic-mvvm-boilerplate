//
//  Dependencies.swift
//  Common
//
//  Created by Maksim Kalik on 10/16/22.
//

import UIKit

public protocol Dependencies: HasCommonServiceOne,
                              HasCommonServiceTwo
{
    var appId: String { get }
}

public protocol HasCommonServiceOne: AnyObject {
    var commonServiceOne: CommonServiceOne { get set }
}

public protocol HasCommonServiceTwo: AnyObject {
    var commonServiceTwo: CommonServiceTwo { get set }
}

// MARK: - Impl.

open class CommonDependencies: Dependencies {

    public let appId: String
    
    public init(appId: String) {
        self.appId = appId
    }
    
    public lazy var commonServiceOne: CommonServiceOne = CommonServiceOneImpementation(dependencies: self)
    public lazy var commonServiceTwo: CommonServiceTwo = CommonServiceTwoImpementation(dependencies: self)
}

// MARK: - Protocol for conforming View Models Implementations

public protocol WithDependencies: AnyObject {
    associatedtype D: Dependencies
    
    var dependencies: D { get }
}
