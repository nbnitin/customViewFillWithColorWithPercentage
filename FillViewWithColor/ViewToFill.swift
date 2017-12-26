//
//  ViewToFill.swift
//  FillViewWithColor
//
//  Created by Nitin Bhatia on 26/12/17.
//  Copyright © 2017 Nitin Bhatia. All rights reserved.
//

import UIKit

@IBDesignable class ViewToFill: UIView {
    
    var lowerRect : CGRect!
    var lowerView : UIView = UIView()
    var rect: CGRect!
    
    @IBInspectable var percentage: CGFloat = 0.5 {
        didSet{
            UIView.animate(withDuration: 0.5, delay: 0.1, usingSpringWithDamping: 0.5, initialSpringVelocity: 5, options: .curveEaseInOut,  animations: {
                let lowerRect = CGRect(x:self.rect.origin.x, y:self.rect.origin.y + (self.rect.size.height * self.percentage), width:self.rect.size.width, height:self.rect.size.height * (1-self.percentage))
                self.lowerView.frame = lowerRect
                self.lowerView.backgroundColor = UIColor.green
                self.addSubview(self.lowerView)
            })
       }
    }
    
    


    override func draw(_ rect: CGRect) {
        
        self.layer.borderWidth = 1.0
        self.layer.borderColor = UIColor.red.cgColor
        self.rect = rect
  
        UIView.animate(withDuration: 0.5, delay: 0.1, usingSpringWithDamping: 0.5, initialSpringVelocity: 5, options: .curveEaseInOut,  animations: {
            let lowerRect = CGRect(x:self.rect.origin.x, y:self.rect.origin.y + (self.rect.size.height * self.percentage), width:self.rect.size.width, height:self.rect.size.height * (1-self.percentage))
            self.lowerView.frame = lowerRect
            self.lowerView.backgroundColor = UIColor.green
            self.addSubview(self.lowerView)
        })
        
        
    }
    
   
    
   
}
