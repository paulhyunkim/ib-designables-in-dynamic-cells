//
//  DesignableTableViewDataSource.swift
//  designables-demo
//
//  Created by Paul Kim on 5/11/16.
//  Copyright © 2016 Paul Kim. All rights reserved.
//

import Foundation
import UIKit
import DesignableViews

class DesignableTableViewDataSource: NSObject, UITableViewDataSource {
  
  var dataSource: [AnyObject]
  var myTableView: UITableView
  
  init(dataSource: [AnyObject], myTableView: UITableView) {
    self.dataSource = dataSource
    self.myTableView = myTableView
    super.init()
  }
  
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return dataSource.count
  }
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCellWithIdentifier("MyCell", forIndexPath: indexPath) as? DesignableTableCell,
      let customCellView = cell.designableView as? CustomCellAView else {
        return UITableViewCell()
    }
    
    customCellView.myLabel.text = dataSource[indexPath.row] as! String
    
    return cell
  }
  
}