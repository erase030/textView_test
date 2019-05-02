//
//  ViewController.swift
//  textView_test
//
//  Created by dit08 on 2019. 4. 30..
//  Copyright © 2019년 dit. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource  {

    
    @IBOutlet weak var tv: UITableView!
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tv.dataSource = self
    }
    
    //UITableViewDataSource 메소드
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 30
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "RE", for: indexPath)
        let row = indexPath.row
        let sec = indexPath.section
        
        cell.textLabel?.text = "Section" + String(sec)
        cell.detailTextLabel?.text = "Row" + String(row)
        
        count = count + 1
        print("cell...")
        
        return cell
    }
}
