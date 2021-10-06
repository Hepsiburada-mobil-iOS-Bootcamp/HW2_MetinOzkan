//
//  PermissionViewController.swift
//  PermissionProject
//
//  Created by Metin özkan on 4.10.2021.
//

import UIKit

class PermissionViewController: UIViewController {

    
//    public var permissionMainViewData:PermissionMainViewData!
    private var viewModel:PermissionViewModel!
    
    private var permissionMainView :PermissionMainView!
    
    convenience init (viewModel: PermissionViewModel){
        self.init()
        self.viewModel = viewModel
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        addPermissionMainView()
    }
    
    
    private func addPermissionMainView() {
     //   permissionMainView = PermissionMainView(data:getPermissionViewData())
        permissionMainView = PermissionMainView(data:viewModel.getPermissionMainViewData())

           permissionMainView.translatesAutoresizingMaskIntoConstraints = false
           
           view.addSubview(permissionMainView)
           
           NSLayoutConstraint.activate([
           
               permissionMainView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
               permissionMainView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
               permissionMainView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
               
           ])

    }
    
//    private func getPermissionViewData() -> PermissionMainViewData {
//        return PermissionMainViewData (image: PermissionImages.camera.value, labelPackData: LabelPackComponentData(title: "Camera", subTitle:"Would you please give permission to access your camera:d"), actionModuleData: ActionModuleData(negativeButtonData: ActionButtonData(text: "Now now", buttonType: .outlined(.smooth)), positiveButtonData: ActionButtonData(text: "okey", buttonType: .filled(.smooth))))
//    }

  

}
