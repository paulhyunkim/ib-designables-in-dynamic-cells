//
//  CustomCellAView.swift
//  demo
//
//  Created by Paul Kim on 4/21/16.
//  Copyright © 2016 Paul Kim. All rights reserved.
//

import UIKit

@IBDesignable public class CustomCellAView: DesignableView {
  
  @IBOutlet public weak var myImageView: UIImageView!
  @IBOutlet public weak var myLabel: UILabel!
  
  @IBInspectable var color: UIColor = UIColor.clearColor() {
    didSet { designableView.layer.backgroundColor = color.CGColor }
  }
  
  @IBInspectable var text: String = "My String" {
    didSet { myLabel.text = text }
  }
  
  @IBInspectable var cornerRadius: CGFloat = 0 {
    didSet { designableView.layer.cornerRadius = cornerRadius }
  }
  
  @IBInspectable public var image: UIImage? {
    didSet { myImageView.image = image }
  }
  
}

