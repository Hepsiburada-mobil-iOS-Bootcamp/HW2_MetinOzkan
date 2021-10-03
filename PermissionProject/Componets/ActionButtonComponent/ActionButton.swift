//
//  ActionButton.swift
//  PermissionProject
//
//  Created by Metin özkan on 28.09.2021.
//

import UIKit


class ActionButton:GenericBaseView<ActionButtonData>{
    
    
    
    private lazy var containerView:UIView = {
        
        let temp = UIView()
        temp.translatesAutoresizingMaskIntoConstraints=false
        temp.layer.cornerRadius=6
        temp.clipsToBounds=true
        temp.backgroundColor = .red
        return temp
        
    }()
    
    private  lazy var infoTitle: UILabel = {
        
        let temp=UILabel()
        temp.translatesAutoresizingMaskIntoConstraints=false
        temp.font=FontManager.bold(14).value
        temp.text="OK"
        temp.contentMode = .center
        temp.textAlignment = .center
        return temp
        
    }()
    
    
    
    
    
    
    override func addMajorViewComponents() {
        super.addMajorViewComponents()
        addContainerView()
    }
    
    private func addContainerView(){
        addSubview(containerView)
        containerView.addSubview(infoTitle)
        
        
        NSLayoutConstraint.activate([
            containerView.leadingAnchor.constraint(equalTo: leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: trailingAnchor),
            containerView.topAnchor.constraint(equalTo: topAnchor),
            containerView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            infoTitle.centerXAnchor.constraint(equalTo:containerView.centerXAnchor),
            infoTitle.centerYAnchor.constraint(equalTo:containerView.centerYAnchor)
            
        ])
        
        
    }
    
    override func loadDataView() {
        super.loadDataView()
        guard let data=returnData() else {return}
        
        infoTitle.text=data.text
        
        switch data.buttonType {
        case .filled(let theme):
            containerView.backgroundColor = theme.value
            infoTitle.textColor = .white
        case .outlined(let theme):
            containerView.layer.borderWidth = 1
            containerView.layer.borderColor = theme.value.cgColor
            containerView.backgroundColor = .white
            infoTitle.textColor = theme.value
        }
    }
    
    //    func loadData(){
    //        infoTitle.text=data.text
    //
    //        switch data.buttonType {
    //        case .filled(let theme):
    //            containerView.backgroundColor = theme.value
    //            infoTitle.textColor = .white
    //        case .outlined(let theme):
    //            containerView.layer.borderWidth = 1
    //            containerView.layer.borderColor = theme.value.cgColor
    //            containerView.backgroundColor = .white
    //            infoTitle.textColor = theme.value
    //        }
    //    }
    //
    
    
    
}


