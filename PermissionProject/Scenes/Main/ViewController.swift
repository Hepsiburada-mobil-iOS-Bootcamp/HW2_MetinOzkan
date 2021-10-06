//
//  ViewController.swift
//  PermissionProject
//
//  Created by Metin özkan on 27.09.2021.
//

import UIKit

typealias BooleanCompletionBlock = (Bool) -> Void

class ViewController: UIViewController {
    
    private var actionButton:ActionButton!
    //    private var actionButton2:ActionButton!
    private var actionModule : ActionModule!
    
    @IBAction func cameraButtonTapped(_ sender: Any) {
        print("Camera Tapped")
        
        present(PermissionViewBuilder.build(with: .camera), animated: true, completion: nil)
 
        
    }
    
    @IBAction func photoButtonTapped(_ sender: Any) {
        print("Photos Tapped")
        
        present(PermissionViewBuilder.build(with: .photos), animated: true, completion: nil)

//        let permissionViewController = PermissionViewController()
//        let data=PermissionMainViewData (image: PermissionImages.photos.value, labelPackData: LabelPackComponentData(title: "Photos Permission", subTitle:"Would you please give permission to access your camera:d"), actionModuleData: ActionModuleData(negativeButtonData: ActionButtonData(text: "Now now", buttonType: .outlined(.bright)), positiveButtonData: ActionButtonData(text: "okey", buttonType: .filled(.bright))))
//
//        permissionViewController.permissionMainViewData = data
//
//        present(permissionViewController, animated: true){
//            print("finish permissinViewCont")
//        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    
    
    
    
    
}

//extension ViewController:ActionButtonDelegate{
//    func actionButtonPressed() {
//        print("viewControll is inforned")
//    }
//    
//}
