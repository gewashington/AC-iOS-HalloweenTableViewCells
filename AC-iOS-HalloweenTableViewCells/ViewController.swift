//
//  ViewController.swift
//  AC-iOS-HalloweenTableViewCells
//
//  Created by C4Q  on 10/30/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var halloween: [Halloween] = []

    
    @IBOutlet weak var tableView: UITableView!

    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        loadData()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.estimatedRowHeight = 5.0
        tableView.rowHeight = UITableViewAutomaticDimension
    }

    func loadData() {
        let allImages = HalloweenData.halloweenCollection
        self.halloween = allImages
        let titleSort = halloween.sorted{$0.title < $1.title}
        self.halloween = titleSort
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return halloween.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let evenRow = indexPath.row % 2 == 0
        if evenRow {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Halloween Cell", for: indexPath)
        if let cell  = cell as? HalloweenTableViewCell {
            let rowToSetUp = indexPath.row
            let imageToSetUp = halloween[rowToSetUp]
            cell.ImageName.text = imageToSetUp.name
            cell.ImageTags.text = imageToSetUp.tag
            cell.Picture.image = UIImage(named: imageToSetUp.picture)
            return cell
        }
        }
            
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Halloween Cell Two", for: indexPath)
            if let cell  = cell as? HalloweenTableViewCell {
                let rowToSetUp = indexPath.row
                let imageToSetUp = halloween[rowToSetUp]
                cell.ImageName.text = imageToSetUp.name
                cell.ImageTags.text = imageToSetUp.tag
                cell.Picture.image = UIImage(named: imageToSetUp.picture)
                return cell
            }
            
        }
    return UITableViewCell()
    }


    

}

