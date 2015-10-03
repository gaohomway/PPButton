//
//  PPButton.swift
//  PPButton
//
//  Created by weifans on 15/10/2.
//  Copyright © 2015年 weifans. All rights reserved.
//

import UIKit

let PP_COlOR = UIColor(red:0.53, green:0.33, blue:0.24, alpha:1)

class PPButton: UIButton {

    enum PPButtonType: Int {
        case PPBDefault
        case PPBPrimary
        case PPBSuccess
        case PPBInfo
        case PPBWarning
        case PPBDanger
    }
    
    var ppButtonType: PPButtonType = .PPBDefault
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame);
    }
    
    init(frame: CGRect, ppButtonType: PPButtonType) {
        super.init(frame: frame)
        self.ppButtonType = ppButtonType
        self.setupButtons()
    }
    
    func setupButtons() -> Void {
 
        switch (ppButtonType) {
            
        case .PPBDefault:
            
            self.setTitleColor(UIColor.blackColor(), forState: .Normal)
            self.backgroundColor = UIColor.whiteColor()
            self.layer.borderColor = UIColor.blackColor().CGColor;
            self.layer.borderWidth = 1.0;

            break
        case .PPBPrimary:
            self.setBackgroundImage(self.imageWithColorToButton(UIColor(red: 70/255, green: 138/255, blue: 207/255, alpha: 1)), forState: .Normal)
            self.setBackgroundImage(self.imageWithColorToButton(UIColor(red: 51/255, green: 112/255, blue: 173/255, alpha: 1)), forState: .Highlighted)
            self.setTitleColor(UIColor.whiteColor(), forState: .Normal)
            self.layer.borderColor = UIColor(red: 57/255, green: 125/255, blue: 194/255, alpha: 1).CGColor
            self.layer.borderWidth = 1.0
            break
        case .PPBSuccess:
            self.setBackgroundImage(self.imageWithColorToButton(UIColor(red: 102/255, green: 184/255, blue: 77/255, alpha: 1)), forState: .Normal)
            self.setBackgroundImage(self.imageWithColorToButton(UIColor(red: 78/255, green: 157/255, blue: 51/255, alpha: 1)), forState: .Highlighted)
            self.setTitleColor(UIColor.whiteColor(), forState: .Normal)
            self.layer.borderColor = UIColor(red: 87/255, green: 174/255, blue: 58/255, alpha: 1).CGColor
            self.layer.borderWidth = 1.0
            break
        case .PPBInfo:
            self.setBackgroundImage(self.imageWithColorToButton(UIColor(red: 99/255, green: 191/255, blue: 225/255, alpha: 1)), forState: .Normal)
            self.setBackgroundImage(self.imageWithColorToButton(UIColor(red: 63/255, green: 175/255, blue: 271/255, alpha: 1)), forState: .Highlighted)
            self.setTitleColor(UIColor.whiteColor(), forState: .Normal)
            self.layer.borderColor = UIColor(red: 80/255, green: 183/255, blue: 221/255, alpha: 1).CGColor
            self.layer.borderWidth = 1.0
            break
        case .PPBWarning:
            self.setBackgroundImage(self.imageWithColorToButton(UIColor(red: 238/255, green: 174/255, blue: 56/255, alpha: 1)), forState: .Normal)
            self.setBackgroundImage(self.imageWithColorToButton(UIColor(red: 233/255, green: 152/255, blue: 0/255, alpha: 1)), forState: .Highlighted)
            self.setTitleColor(UIColor.whiteColor(), forState: .Normal)
            self.layer.borderColor = UIColor(red: 235/255, green: 163/255, blue: 4/255, alpha: 1).CGColor
            self.layer.borderWidth = 1.0
            break
        case .PPBDanger:
            self.setBackgroundImage(self.imageWithColorToButton(UIColor(red: 212/255, green: 84/255, blue: 76/255, alpha: 1)), forState: .Normal)
            self.setBackgroundImage(self.imageWithColorToButton(UIColor(red: 193/255, green: 49/255, blue: 38/255, alpha: 1)), forState: .Highlighted)
            self.setTitleColor(UIColor.whiteColor(), forState: .Normal)
            self.layer.borderColor = UIColor(red: 199/255, green: 63/255, blue: 52/255, alpha: 1).CGColor
            self.layer.borderWidth = 1.0
            break
            
        default:
            self.setBackgroundImage(self.imageWithColorToButton(UIColor.whiteColor()), forState: .Normal)
            self.setBackgroundImage(self.imageWithColorToButton(UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1)), forState: .Highlighted)
            self.setTitleColor(UIColor(red: 51/255, green: 51/255, blue: 51/255, alpha: 1), forState: .Normal)
            self.setTitleColor(UIColor(red: 77/255, green: 51/255, blue: 51/255, alpha: 1), forState: .Highlighted)
            self.layer.borderColor = UIColor(red: 162/255, green: 162/255, blue: 162/255, alpha: 1).CGColor
            self.layer.borderWidth = 1.0
            break
        }
        
        self.titleLabel?.font = UIFont.systemFontOfSize(15)
        self.layer.cornerRadius = 18
        self.layer.masksToBounds = true
        self.addTarget(self, action: Selector("TouchDown:"), forControlEvents: .TouchDown)
        self.addTarget(self, action: Selector("TouchUpInside:"), forControlEvents: .TouchUpInside)
        self.addTarget(self, action: Selector("TouchUpOutside:"), forControlEvents: .TouchUpOutside)
        
    }
    
    func imageWithColorToButton(colorButton: UIColor) -> UIImage {
        
        let rect: CGRect = CGRectMake(0, 0, 1, 1)
        UIGraphicsBeginImageContext(rect.size)
        let context: CGContextRef = UIGraphicsGetCurrentContext()!
        CGContextSetFillColorWithColor(context, colorButton.CGColor)
        CGContextFillRect(context, rect)
        let imageReturn: UIImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return imageReturn
    }
    
    func TouchDown(button: PPButton) {
        UIView.animateWithDuration(0.2) { () -> Void in
            button.transform = CGAffineTransformMakeScale(0.8, 0.8)
        }
    }
    
    func TouchUpInside(button: PPButton) {
        self.TouchUpOutside(button)
        
    }
    
    func TouchUpOutside(button: PPButton) {
        UIView.animateWithDuration(0.1) { () -> Void in
            button.transform = CGAffineTransformMakeScale(1.0, 1.0);
        }
    }
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
