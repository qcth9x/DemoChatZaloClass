//
//  ConversationMessageViewController.swift
//  DemoChatZaloClass
//
//  Created by Nguyễn Mạnh Linh on 22/05/2023.
//

import UIKit

class ConversationMessageViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    
    @IBOutlet weak var tblMessage: UITableView!
    var messages: [Message] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        tblMessage.dataSource = self
        tblMessage.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblMessage.dequeueReusableCell(withIdentifier:"MessageCellIndentifier")!
        let lblMessage = cell.viewWithTag(102) as! UILabel
        lblMessage.text = messages[indexPath.row].content
//        lblMessage.layer.borderWidth = 100
//        lblMessage.layer.borderColor = UIColor.blue.cgColor
       return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
}
    
