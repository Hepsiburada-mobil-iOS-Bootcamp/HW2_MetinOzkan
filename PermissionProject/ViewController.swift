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
        
    }
    
    @IBAction func photoButtonTapped(_ sender: Any) {
        print("Photos Tapped")
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        addActionButton()
        addActionModule()
        setupActionModuleData()
//        DispatchQueue.main.asyncAfter(deadline: .now()+3){
//            let actionButtonData =  ActionButtonData(text: "OK", buttonType: .filled(.smooth)).setActionButtonListener(by: self.actionButtonHandler)
//            self.actionButton.setData(by:actionButtonData)
//        }
//
//        //        test { finish in
//        //            print ("finish \(finish)")
//        //        }
//
//        test(completion: testHandler)
        
        
    }
    
    lazy var testHandler:BooleanCompletionBlock = {
        value in print("value \(value)")
    }
    
    lazy var actionButtonHandler:VoidCompletionBlock = {
        print("ACTION BUTTON PRESSED")
    }
    
    private func addActionButton() {
        actionButton=ActionButton()
        actionButton.translatesAutoresizingMaskIntoConstraints=false
        
        //        actionButton.delegate = self
        
        view.addSubview(actionButton)
        
        NSLayoutConstraint.activate([
            actionButton.heightAnchor.constraint(equalToConstant: 50),
            actionButton.widthAnchor.constraint(equalToConstant: 120),
            actionButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            actionButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
        ])
        
    }
    
    
    
    
    private func addActionModule() {
        actionModule = ActionModule()
        actionModule.translatesAutoresizingMaskIntoConstraints=false
        
        //        actionButton.delegate = self
        
        view.addSubview(actionModule)
        
        NSLayoutConstraint.activate([
          
            actionModule.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            actionModule.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 200),
            
        ])
        
    }
    
    
   private func setupActionModuleData (){
       
       let negative = ActionButtonData(text: "Now now", buttonType:.outlined(.smooth)).setActionButtonListener {
           print("negative fire")
       }
       
       let positive = ActionButtonData(text: "OK", buttonType: .filled(.smooth)).setActionButtonListener {
           print("positive fire")
       }
       
       actionModule.setData(by: ActionModuleData(negativeButtonData: negative, positiveButtonData: positive))
        
    }
    
    func test (completion:@escaping(Bool) -> Void){
        print("test fired")
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3){
            completion(true)
        }
    }
    
}

//extension ViewController:ActionButtonDelegate{
//    func actionButtonPressed() {
//        print("viewControll is inforned")
//    }
//    
//}
