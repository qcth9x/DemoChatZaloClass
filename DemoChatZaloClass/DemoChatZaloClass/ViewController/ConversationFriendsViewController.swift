//
//  ConversationFriendsViewController.swift
//  DemoChatZaloClass
//
//  Created by Lê Đình Linh on 25/05/2023.
//

import UIKit

class ConversationFriendsViewController: UIViewController , UITableViewDataSource , UITableViewDelegate {
    
    @IBOutlet weak var tblFriends: UITableView!
    let danhSachTaiKhoan = ["Đinh Tiên Hoàng","Đinh Quốc Hùng","Linh Đình Lê"," Đinh Linh Tinh"]
    let danhSachAnh = ["a1","a2","a3","a4"]
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return danhSachAnh.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblFriends.dequeueReusableCell(withIdentifier:"FriendsCellIndentifier")!
        let imgIcon = cell.viewWithTag(201) as! UIImageView
        imgIcon.image = UIImage(named: danhSachAnh[indexPath.row])
        imgIcon.layer.cornerRadius = 30
        let lblZaloName = cell.viewWithTag(202) as! UILabel
        lblZaloName.text = danhSachTaiKhoan[indexPath.row]
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
  
    

    

}
