//
//  Dependencies.swift
//  Common
//
//  Created by Maksim Kalik on 10/16/22.
//

import UIKit

public protocol Dependencies: HasCommonServiceOne,
                       HasCommonServiceTwo
{ }

public protocol HasCommonServiceOne: AnyObject {
    var commonServiceOne: CommonServiceOne { get set }
}

public protocol HasCommonServiceTwo: AnyObject {
    var commonServiceTwo: CommonServiceTwo { get set }
}

open class CommonDependencies: Dependencies {
    public lazy var commonServiceOne: CommonServiceOne = CommonServiceOneImpementation(dependencies: self)
    public lazy var commonServiceTwo: CommonServiceTwo = CommonServiceTwoImpementation(dependencies: self)
}
