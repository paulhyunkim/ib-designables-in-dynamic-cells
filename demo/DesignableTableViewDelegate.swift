//
//  DesignableTableViewDelegate.swift
//  designables-demo
//
//  Created by Paul Kim on 5/11/16.
//  Copyright © 2016 Paul Kim. All rights reserved.
//

import Foundation
import UIKit

class DesignableTableViewDelegate: NSObject, UITableViewDelegate {
  
  func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
    return UITableViewAutomaticDimension
  }
  
}