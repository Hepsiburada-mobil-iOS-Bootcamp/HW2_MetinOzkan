//
//  ActionButton.swift
//  PermissionProject
//
//  Created by Metin özkan on 28.09.2021.
//

import UIKit

protocol ActionButtonDelegate : AnyObject{
    func actionButtonPressed ()
}



class ActionButton:GenericBaseView<ActionButtonData>{
    
//    weak var delegate:ActionButtonDelegate?
    
    
    private lazy var shadowView:UIView = {
        
        let temp = UIView()
        temp.translatesAutoresizingMaskIntoConstraints=false
        temp.layer.shadowColor = UIColor.black.cgColor
        temp.layer.shadowOffset =  CGSize (width: 0, height:2)
        temp.layer.shadowRadius = 4
        temp.layer.shadowOpacity = 0.4
        temp.layer.cornerRadius = 6
        
        
        return temp
        
    }()
    
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
    
    
    override func setupViewConfigurations() {
        super.setupViewConfigurations()
        
        addTapGesture()
    }
    
    
    private func addContainerView(){
        
        
        addSubview(shadowView)
        shadowView.addSubview(containerView)
        
        containerView.addSubview(infoTitle)
        
        
        NSLayoutConstraint.activate([
            shadowView.leadingAnchor.constraint(equalTo: leadingAnchor),
            shadowView.trailingAnchor.constraint(equalTo: trailingAnchor),
            shadowView.topAnchor.constraint(equalTo: topAnchor),
            shadowView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            
            
            containerView.leadingAnchor.constraint(equalTo: shadowView.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: shadowView.trailingAnchor),
            containerView.topAnchor.constraint(equalTo: shadowView.topAnchor),
            containerView.bottomAnchor.constraint(equalTo: shadowView.bottomAnchor),
            
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
    
   private func pressedButtonAction(){
        
        guard let data = returnData()  else{ return}
        data.actionButtonListener?()
    }
    
    
}


//MARK: -blabla

extension ActionButton: UIGestureRecognizerDelegate{
    
    
    private func addTapGesture(){
        let tap=UITapGestureRecognizer(target: self, action: .buttonTappedSelector)
        tap.delegate = self
        addGestureRecognizer(tap)
    }
    
    @objc fileprivate func buttonTapped(_ sender : UITapGestureRecognizer){
        isUserInteractionEnabled = false
        startTappedAnimation { finish in
            if finish {
                
                self.isUserInteractionEnabled = true
                
                print("clicked")
                
//                self.delegate?.actionButtonPressed()
                self.pressedButtonAction() 
            }
        }
        
    }
    
}

fileprivate extension Selector {
    
    static let buttonTappedSelector = #selector(ActionButton.buttonTapped)
    
}
