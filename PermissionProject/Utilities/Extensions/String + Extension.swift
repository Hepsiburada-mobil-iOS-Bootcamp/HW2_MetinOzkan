//
//  String + Extension.swift
//  PermissionProject
//
//  Created by Metin özkan on 6.10.2021.
//


import Foundation

extension String {
    
    func toLocalize() -> String {
        return NSLocalizedString(self, comment: "")
    }
    
}
