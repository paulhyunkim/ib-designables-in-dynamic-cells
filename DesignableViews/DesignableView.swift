//
//  DesignableView.swift
//  designables-demo
//
//  Created by Paul Kim on 5/10/16.
//  Copyright © 2016 Paul Kim. All rights reserved.
//

import UIKit

public class DesignableView: UIView {
  
  /* Maybe not a good idea to make implicitly unwrapped */
  var designableView: UIView!
    
  override init(frame: CGRect) {
    super.init(frame: frame)
    xibSetup()
  }
  
  required public init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    xibSetup()
  }
  
  func xibSetup() {
    designableView = loadViewFromNib()
    designableView.frame = bounds
    designableView.translatesAutoresizingMaskIntoConstraints = false
    
    addSubview(designableView)
    
    let leadingConstraint = NSLayoutConstraint(item: designableView, attribute: .Leading, relatedBy: .Equal, toItem: self, attribute: .Leading, multiplier: 1.0, constant: 0.0)
    let trailingConstraint = NSLayoutConstraint(item: designableView, attribute: .Trailing, relatedBy: .Equal, toItem: self, attribute: .Trailing, multiplier: 1.0, constant: 0.0)
    let topConstraint = NSLayoutConstraint(item: designableView, attribute: .Top, relatedBy: .Equal, toItem: self, attribute: .Top, multiplier: 1.0, constant: 0.0)
    let bottomConstraint = NSLayoutConstraint(item: designableView, attribute: .Bottom, relatedBy: .Equal, toItem: self, attribute: .Bottom, multiplier: 1.0, constant: 0.0)
    addConstraints([leadingConstraint, trailingConstraint, topConstraint, bottomConstraint])
  }
  
  func loadViewFromNib() -> UIView {
    let bundle = NSBundle(forClass: self.dynamicType)
    let nib = UINib(nibName: "CustomCellAView", bundle: bundle)
    let view = nib.instantiateWithOwner(self, options: nil)[0] as! UIView
    return view
  }
  
}
