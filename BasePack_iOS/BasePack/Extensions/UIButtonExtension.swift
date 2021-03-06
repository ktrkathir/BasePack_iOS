//
//  UIButtonExtension.swift
//  BasePack_ios
//
//  Created by Kathiresan Murugan on 09/11/20.
//  Copyright © 2020 KtrKathir. All rights reserved.
//

import Foundation
import UIKit

extension UIButton {
    
    /* func setDynamicFontSizeButton() {
     NotificationCenter.default.addObserver(self, selector: #selector(setButtonDynamicFontSize), name: UIContentSizeCategory.didChangeNotification, object: nil)
     }
     
     @objc func setButtonDynamicFontSize() {
     setDarkBlueTheme(btn: self, title: self.titleLabel?.text ?? "")
     setLiteBlueTheme(btn: self, title: self.titleLabel?.text ?? "")
     
     
     }*/
    
    func setButtonAttributes(titleText:String,titleColor:UIColor,backgroundColor:UIColor ,font:UIFont? = nil,alignment:UIControl.ContentHorizontalAlignment,cornerRadius:CGFloat) {
        self.tintColor = .white
        self.setTitle(titleText, for: .normal)
        self.setTitleColor(titleColor, for: .normal)
        self.semanticContentAttribute = .forceLeftToRight
        self.titleLabel?.font                = font
        self.contentHorizontalAlignment      = alignment
        self.layer.cornerRadius              = cornerRadius
        self.clipsToBounds                   = true
        self.backgroundColor = backgroundColor
    }
    
    
    func setInsets(
        forContentPadding contentPadding: UIEdgeInsets,
        imageTitlePadding: CGFloat
    ) {
        self.contentEdgeInsets = UIEdgeInsets(
            top: contentPadding.top,
            left: contentPadding.left,
            bottom: contentPadding.bottom,
            right: contentPadding.right + imageTitlePadding
        )
        self.titleEdgeInsets = UIEdgeInsets(
            top: 0,
            left: imageTitlePadding,
            bottom: 0,
            right: -imageTitlePadding
        )
    }
    
    
    
    func setDarkBlueTheme(btn:UIButton, title:String) {
        
        btn.backgroundColor = ColorManager.darkBlueTheme.color
        btn.setTitle(title, for: .normal)
        btn.setTitleColor(ColorManager.white.color, for: .normal)
        btn.applyCornerRadius(amount: 5)
        // Utility().getScaledFont(forFont:Font.FontName.DMSansMedium.rawValue, textStyle: .callout)
        btn.titleLabel?.font = UIFont.customFont(.ExoMedium, size: 16.0)
        btn.titleLabel?.adjustsFontForContentSizeCategory = false
        
    }
    func setLiteBlueTheme(btn:UIButton, title:String) {
        
        // Utility().getScaledFont(forFont:Font.FontName.DMSansMedium.rawValue, textStyle: .callout)
        
        btn.backgroundColor = ColorManager.liteBlueTheme.color
        btn.setTitle(title, for: .normal)
        btn.setTitleColor(ColorManager.white.color, for: .normal)
        btn.titleLabel?.font = UIFont.customFont(.ExoMedium, size: 16.0)
        btn.applyCornerRadius(amount: 5)
        btn.titleLabel?.adjustsFontForContentSizeCategory = false
        
    }
    
    func setButtonProperties(btn:UIButton, title:String, font:UIFont?,titleColor:UIColor) {
        btn.backgroundColor = .clear
        btn.setTitle(title, for: .normal)
        btn.setTitleColor(titleColor, for: .normal)
        btn.titleLabel?.font = font
        btn.titleLabel?.adjustsFontForContentSizeCategory = false
        
    }
    
    
    func setGreyBorderColor() {
        self.layer.borderWidth = 0.5
        self.layer.borderColor = ColorManager.borderColor.color.cgColor
        self.layer.masksToBounds = true
    }
    
    func setClearBorderColor() {
        self.layer.borderWidth = 1.0
        self.layer.borderColor = UIColor.clear.cgColor
        self.layer.masksToBounds = true
    }
    
    func applyCornerRadius(amount:CGFloat) {
        
        self.layer.cornerRadius = amount
        self.layer.masksToBounds = true
        
    }
    func setCornerRadius(amount: CGFloat, withBorderAmount borderWidthAmount: CGFloat, andColor borderColor: UIColor) {
        
        self.layer.cornerRadius = amount
        self.layer.borderWidth = borderWidthAmount
        self.layer.borderColor = borderColor.cgColor
        self.layer.masksToBounds = true
        
    }
    
    func underline(text: String, color : UIColor) {
        //        guard let text = self.titleLabel?.text else { return }
        let attributedString = NSMutableAttributedString(string: text)
        //NSAttributedStringKey.foregroundColor : UIColor.blue
        attributedString.addAttribute(NSAttributedString.Key.underlineColor, value: color, range: NSRange(location: 0, length: text.count))
        attributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: self.titleColor(for: .normal)!, range: NSRange(location: 0, length: text.count))
        attributedString.addAttribute(NSAttributedString.Key.underlineStyle, value: NSUnderlineStyle.thick.rawValue, range: NSRange(location: 0, length: text.count))
        self.setAttributedTitle(attributedString, for: .normal)
    }
    
    func setYellowButton(title: String ) {
        
        // Utility().getScaledFont(forFont:Font.FontName.DMSansMedium.rawValue, textStyle: .callout)
        
        backgroundColor = ColorManager.yellowTheme.color
        setTitle(title, for: .normal)
        setTitleColor(ColorManager.darkText.color, for: .normal)
        titleLabel?.font = UIFont.customFont(.ExoMedium, size: 16.0)
        applyCornerRadius(amount: 5)
        titleLabel?.adjustsFontForContentSizeCategory = false
        
    }
    
}
