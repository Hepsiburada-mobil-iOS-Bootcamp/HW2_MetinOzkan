//
//  GenericValueProtocol.swift
//  PermissionProject
//
//  Created by Metin özkan on 30.09.2021.
//

import Foundation

protocol GenericValueProtocol {
    associatedtype Value
    var value: Value { get }
}
