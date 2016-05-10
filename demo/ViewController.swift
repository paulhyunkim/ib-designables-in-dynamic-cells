	//
//  ViewController.swift
//  demo
//
//  Created by Paul Kim on 4/21/16.
//  Copyright © 2016 Paul Kim. All rights reserved.
//

import UIKit
import MyCustomView

class ViewController: UIViewController {

    @IBOutlet weak var myTableView: UITableView!
    
    let dataSource = [
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce semper ligula libero.",
        "Sed euismod eleifend justo laoreet congue. Etiam ante lacus, accumsan non sodales nec, pulvinar eu dolor. Suspendisse ligula libero, congue non ante sit amet, luctus sagittis lacus. Nullam vitae dui pellentesque est faucibus scelerisque sed eget justo. Aliquam varius semper aliquet.",
        "Aliquam dictum pretium lorem, id iaculis ex scelerisque in.",
        "Quisque nec sem nisl. Vestibulum vitae turpis eget risus faucibus porta. Maecenas nec elit finibus, malesuada neque ac, mollis orci. Fusce eu velit cursus, suscipit libero vitae, sodales erat. Vivamus bibendum vitae justo id placerat. Integer sagittis lacinia dolor, vel lacinia arcu placerat nec. Proin leo sapien, tempus non iaculis quis, euismod rutrum ipsum. Quisque sed leo purus. Ut felis nisl, mollis sollicitudin nibh vel, iaculis blandit sem.",
        "Nullam ultrices tellus arcu, id condimentum felis lobortis ut. Maecenas mauris metus, viverra vitae laoreet tempor, tempus sed lacus. Quisque dictum dapibus elit eu feugiat."
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

    
extension ViewController: UITableViewDelegate {
    
    func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 100
    }
    
}
    
    
extension ViewController: UITableViewDataSource {
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        
        let cell = tableView.dequeueReusableCellWithIdentifier("MyCell", forIndexPath: indexPath)
        
        if let customView = cell.subviews[0].subviews[0] as? MyCustomView {
            customView.myLabel.text = dataSource[indexPath.row]
        }
    
        return cell
    }
    
}
    
    