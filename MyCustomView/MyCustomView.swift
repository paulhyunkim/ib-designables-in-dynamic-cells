//
//  MyCustomView.swift
//  demo
//
//  Created by Paul Kim on 4/21/16.
//  Copyright © 2016 Paul Kim. All rights reserved.
//

import UIKit

@IBDesignable public class MyCustomView: UIView {
    
    var view: UIView!

    @IBOutlet public weak var myImageView: UIImageView!
    @IBOutlet public weak var myLabel: UILabel!

    @IBInspectable var color: UIColor = UIColor.clearColor() {
        didSet {
            view.layer.backgroundColor = color.CGColor
        }
    }
    
    @IBInspectable var text: String = "My String" {
        didSet {
            myLabel.text = text
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            view.layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable public var image: UIImage? {
        didSet {
            myImageView.image = image
        }
    }
    
    func xibSetup() {
//        self.alpha = 0
        view = loadViewFromNib()
        
        // use bounds not frame or it'll be offset
        view.frame = bounds
        
//        self.bounds = CGRect(x: 0, y: 0, width: 376, height: 300)
        
        // Make the view stretch with containing view
        view.autoresizingMask = [UIViewAutoresizing.FlexibleWidth, UIViewAutoresizing.FlexibleHeight]
        // Adding custom subview on top of our view (over any custom drawing > see note below)
        addSubview(view)
    }
    
    func loadViewFromNib() -> UIView {
        let bundle = NSBundle(forClass: self.dynamicType)
        let nib = UINib(nibName: "MyCustomView", bundle: bundle)
        let view = nib.instantiateWithOwner(self, options: nil)[0] as! UIView
        
        return view
    }
    
    override init(frame: CGRect) {
        // 1. setup any properties here
        
        // 2. call super.init(frame:)
        super.init(frame: frame)
        
        // 3. Setup view from .xib file
        xibSetup()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        // 1. setup any properties here
        
        // 2. call super.init(coder:)
        super.init(coder: aDecoder)
        
        // 3. Setup view from .xib file
        xibSetup()
    }

}
