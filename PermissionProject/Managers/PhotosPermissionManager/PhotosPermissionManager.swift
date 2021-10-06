//
//  CameraPermissionManager.swift
//  PermissionProject
//
//  Created by Metin özkan on 6.10.2021.
//

import Foundation


class PhotosPermissionManager :PermissionManagerProtocol{
    func requestPermission(with completion: @escaping VoidCompletionBlock) {
        print("req permisison")
    }
    
    func getPermissionMainViewData() -> PermissionMainViewData {
       return PermissionMainViewData (image: PermissionImages.photos.value, labelPackData: LabelPackComponentData(title: "Photos Permission", subTitle:"Would you please give permission to access your camera:d"), actionModuleData: ActionModuleData(negativeButtonData: ActionButtonData(text: "Now now", buttonType: .outlined(.bright)), positiveButtonData: ActionButtonData(text: "okey", buttonType: .filled(.bright))))
         
    }
    
     
}
