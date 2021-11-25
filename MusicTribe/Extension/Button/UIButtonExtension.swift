//
//  UIButtonExtension.swift
//  MusicTribe
//
//  Created by Sakshi Jain on 24/11/21.
//

import Foundation
import UIKit
enum ButtonStyle: String {
    case border = "border"
    case none = "none"
}
extension UIButton {
    
    func addButtonStyle(border: ButtonStyle) {
        if (border == ButtonStyle.border) {
            self.setButtonBorder(borderWidth: 1.0, borderColor: UIColor.green.cgColor)
            self.titleLabel?.font = MEDIUM_FONT_SIZE
            self.backgroundColor = UIColor.white
            self.setTitleColor(UIColor.darkGray, for: .normal)
        } else {
            self.titleLabel?.font = MEDIUM_BOLD_FONT_SIZE
            self.backgroundColor = UIColor.green
            self.setTitleColor(.white, for: .normal)
        }
        self.layer.cornerRadius = IS_IPAD ? 14 : 14
    }
        
    private func setButtonBorder(borderWidth: CGFloat, borderColor: CGColor) {
        self.layer.borderWidth = borderWidth
        self.layer.borderColor = borderColor
    }
    
    func disableButton() {
        self.isEnabled = false
        self.layer.opacity = DISABLED_STATE_ALPHA
    }
    
    func enableButton() {
        self.isEnabled = true
        self.layer.opacity = 1
    }
        
    func enableButton(border: ButtonStyle) {
        self.isEnabled = true
        self.layer.opacity = 1.0
    }
    
    func setRadioImage(_ iconName: String) {
        let radioImage = UIImage(named: iconName)
        guard let image = radioImage else {
            print("Radio image not found")
            return
        }
        
        self.setImage(image, for: .normal)
        self.setImage(image, for: .highlighted)
        let imageWidth = image.size.width
        self.contentHorizontalAlignment = .left
        let gapBtwImageAndButton: CGFloat = (IS_IPAD ? 16 : 8)
        var textWidth: CGFloat = 0
        
        if let text = self.titleLabel?.text {
            textWidth = (text as NSString).size(withAttributes: [NSAttributedString.Key.font: self.titleLabel!.font!]).width
            self.widthAnchor.constraint(equalToConstant: textWidth + imageWidth + gapBtwImageAndButton + (IS_IPAD ? 2 : 4)).isActive = true
            self.layoutIfNeeded()
        }
    }
}
