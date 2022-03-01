//
//  ViewController.swift
//  TodoEmail
//
//  Created by bmtech on 01.03.2022.
//

import UIKit

class ViewController: UIViewController {
    let idCell = "mailCell"

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
    }


}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    //метод dataSource додавання секцій (груп)
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    //додавання комірок з різною кількістю у секції
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 2
        } else {
            return 4
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: idCell) as! MailTableViewCell
        cell.titleLabel.text = "text"
        cell.subTitleLabel.text = "subTitleText"
        
      
        return cell
        }
    //метод dataSource додавання header section
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section "
    }
    //методи delegate додавання висоти комірок через tableView.delegate = self -> UITableViewDelegate
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
    //методи delegate вивід після натиснення на комірку didSelectRowAt
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(indexPath.row)")
    }
    
    
}


