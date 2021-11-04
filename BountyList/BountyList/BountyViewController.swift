//
//  BountyViewController.swift
//  BountyList
//
//  Created by 최호준 on 2021/11/04.
//

import UIKit


class BountyViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let nameList = ["brook", "chopper", "franky", "luffy", "nami", "robin", "sanji", "zoro"]
    let bountyList = [3300000, 50, 4400000, 30000000, 16000000, 8000000, 77000000, 120000000]

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bountyList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // guard 구문
        //        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ListCell else {
//            return UITableViewCell()
//        }
//        let img = UIImage(named: "\(nameList[indexPath.row]).jpg")
//        cell.imgView.image = img
//        cell.nameLabel.text = nameList[indexPath.row]
//        cell.bountryLabel.text = "\(bountyList[indexPath.row])"
//        return cell
        
        // if 구문
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ListCell {
            let img = UIImage(named: "\(nameList[indexPath.row]).jpg")
            cell.imgView.image = img
            cell.nameLabel.text = nameList[indexPath.row]
            cell.bountryLabel.text = "\(bountyList[indexPath.row])"
            return cell
        } else {
            return UITableViewCell()
        }
    
    }
    
    // UITableViewDelegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("--> \(indexPath.row)")
        performSegue(withIdentifier: "showDetail", sender: nil)
    }
}


// Custom Cell
class ListCell: UITableViewCell {
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var bountryLabel: UILabel!
}
