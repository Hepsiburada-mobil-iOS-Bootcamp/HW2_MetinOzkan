//
//  PermissionManagerProtocol.swift
//  PermissionProject
//
//  Created by Metin özkan on 6.10.2021.
//

import Foundation

enum PermissionType{
    
    case camera
    case photos
}

protocol PermissionManagerProtocol{
    
        
    func requestPermission(with completion: @escaping VoidCompletionBlock)
    
    
    func getPermissionMainViewData(with negativeListener : @escaping VoidCompletionBlock,with positiveListener : @escaping VoidCompletionBlock) -> PermissionMainViewData
    
}
