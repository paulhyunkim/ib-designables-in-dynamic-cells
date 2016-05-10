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
        view = loadViewFromNib()
        view.frame = bounds
        addSubview(view)
    }
    
    func loadViewFromNib() -> UIView {
        let bundle = NSBundle(forClass: self.dynamicType)
        let nib = UINib(nibName: "MyCustomView", bundle: bundle)
        let view = nib.instantiateWithOwner(self, options: nil)[0] as! UIView
        return view
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        xibSetup()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        xibSetup()
    }

}

