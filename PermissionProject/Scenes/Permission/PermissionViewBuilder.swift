//
//  PermissionViewBuilder.swift
//  PermissionProject
//
//  Created by Metin özkan on 6.10.2021.
//

import Foundation
import UIKit



class PermissionViewBuilder {
    class func build (with type: PermissionType) ->UIViewController{
        
        let manager = PermissionViewFactory.getManager(with: type )
        let viewModel = PermissionViewModel(manager: manager)
        return PermissionViewController(viewModel: viewModel)
    }
}
