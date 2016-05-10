//
//  MyCustomView2.swift
//  demo
//
//  Created by Paul Kim on 4/21/16.
//  Copyright © 2016 Paul Kim. All rights reserved.
//

import UIKit

@IBDesignable public class MyCustomView2: UIView {

    var view: UIView!
    
    @IBOutlet weak public var myImageView: UIImageView!
    @IBOutlet weak public var myButton: UIButton!
    
    
    @IBInspectable public var color: UIColor = UIColor.clearColor() {
        didSet {
            view.layer.backgroundColor = color.CGColor
        }
    }
    
    @IBInspectable public var text: String = "My String" {
        didSet {
            myButton.setTitle(text, forState: .Normal)
        }
    }
    
    @IBInspectable public var image: UIImage? {
        didSet {
            myImageView.image = image
        }
    }
    
    @IBInspectable public var cornerRadius: CGFloat = 0 {
        didSet {
            view.layer.cornerRadius = cornerRadius
        }
    }
    
    func xibSetup() {
//        self.alpha = 0
        view = loadViewFromNib()
        
        // use bounds not frame or it'll be offset
        view.frame = bounds
        
        // Make the view stretch with containing view
        view.autoresizingMask = [UIViewAutoresizing.FlexibleWidth, UIViewAutoresizing.FlexibleHeight]
        // Adding custom subview on top of our view (over any custom drawing > see note below)
        addSubview(view)
    }
    
    func loadViewFromNib() -> UIView {
        let bundle = NSBundle(forClass: self.dynamicType)
        let nib = UINib(nibName: "MyCustomView2", bundle: bundle)
        let view = nib.instantiateWithOwner(self, options: nil)[0] as! UIView
        
        return view
    }
    
    public override init(frame: CGRect) {
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
