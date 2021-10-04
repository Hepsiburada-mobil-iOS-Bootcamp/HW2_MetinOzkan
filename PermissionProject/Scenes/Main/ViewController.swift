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
        let permissionViewController = PermissionViewController()
        present(permissionViewController, animated: true){
            print("finish permissinViewCont")
        }
        
    }
    
    @IBAction func photoButtonTapped(_ sender: Any) {
        print("Photos Tapped")
        
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
