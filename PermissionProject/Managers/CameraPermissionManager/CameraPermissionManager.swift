//
//  CameraPermissionManager.swift
//  PermissionProject
//
//  Created by Metin özkan on 6.10.2021.
//

import Foundation


class CameraPermissionManager :PermissionManagerProtocol{
   
    
    func requestPermission(with completion: @escaping VoidCompletionBlock) {
        print("req permisison")
    }
    func getPermissionMainViewData(with negativeListener: @escaping VoidCompletionBlock, with positiveListener: @escaping VoidCompletionBlock) -> PermissionMainViewData {
        return  PermissionMainViewData (image: PermissionImages.camera.value, labelPackData: LabelPackComponentData(title: PermissionLocalizables.cameraPermissionTitle.value, subTitle: PermissionLocalizables.cameraPermissionSubTitle.value), actionModuleData: ActionModuleData(negativeButtonData: ActionButtonData(text:  PermissionLocalizables.permissionNotNow.value, buttonType: .outlined(.smooth)).setActionButtonListener(by: negativeListener), positiveButtonData: ActionButtonData(text:  PermissionLocalizables.permissionOk.value, buttonType: .filled(.smooth)).setActionButtonListener(by: positiveListener)))
    }
    

    
     
}
