//
//  ActionButton.swift
//  PermissionProject
//
//  Created by Metin özkan on 28.09.2021.
//

import UIKit


class ActionButton:BaseView{
    
    private let data:ActionButtonData
    
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
        temp.text="Buttonas"
        temp.contentMode = .center
        temp.textAlignment = .center
        return temp
        
    }()
    
    
    init(frame: CGRect,data:ActionButtonData) {
        self.data=data
        super.init(frame: frame)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func addMajorViewComponents() {
        super.addMajorViewComponents()
        addContainerView()
        loadData()
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
    
    func loadData(){
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
    
    
    
    
}


