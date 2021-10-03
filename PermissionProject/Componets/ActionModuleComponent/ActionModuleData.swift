//
//  ActionModuleData.swift
//  PermissionProject
//
//  Created by Metin özkan on 3.10.2021.
//

import Foundation
import UIKit

class ActionModuleData{
    
    private(set) var negativeButtonData:ActionButtonData
    private(set) var positiveButtonData:ActionButtonData
    
    
    init(negativeButtonData:ActionButtonData,positiveButtonData:ActionButtonData){
        self.negativeButtonData = negativeButtonData
        self.positiveButtonData = positiveButtonData
    }

}
