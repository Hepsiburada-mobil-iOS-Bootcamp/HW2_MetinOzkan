    //
    //  ActionButtonData.swift
    //  PermissionProject
    //
    //  Created by Metin özkan on 30.09.2021.
    //

    import UIKit


  
    class ActionButtonData{
        
        
        private(set) var text:String = ""
        private(set) var buttonType:ActionButtonType
        
        
        init(text:String,buttonType:ActionButtonType) {
            self.text=text
            self.buttonType=buttonType
        }
        
        
        
    }
            
