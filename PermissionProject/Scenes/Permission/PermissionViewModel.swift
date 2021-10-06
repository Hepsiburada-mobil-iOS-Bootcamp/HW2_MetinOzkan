//
//  PermissionViewModel.swift
//  PermissionProject
//
//  Created by Metin özkan on 6.10.2021.
//

import Foundation
import UIKit


class PermissionViewModel {
    
    
    private let manager:PermissionManagerProtocol
    
    
    init(manager:PermissionManagerProtocol){
        self.manager = manager
    }
    
    func getPermissionMainViewData() ->PermissionMainViewData {
        
        return manager.getPermissionMainViewData()
        
    }
    
}
