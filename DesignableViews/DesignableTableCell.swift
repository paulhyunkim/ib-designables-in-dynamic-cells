//
//  DesignableTableCell.swift
//  designables-demo
//
//  Created by Paul Kim on 5/10/16.
//  Copyright © 2016 Paul Kim. All rights reserved.
//

import UIKit

public class DesignableTableCell: UITableViewCell {
  
  public var designableView: UIView {
    return self.subviews[0].subviews[0]
  }
  
}
