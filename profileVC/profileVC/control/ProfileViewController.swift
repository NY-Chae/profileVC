

import UIKit

struct ProfileItem {
    let iconName: String
    let title: String
}


class ProfileViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.register(UINib(nibName: "ProfileTableViewCell", bundle: nil), forCellReuseIdentifier: "ProfileList")
        
        table.dataSource = self
        table.delegate = self
        table.separatorStyle = .none
        table.rowHeight = 85
    }
    
    
    // 더미 데이터
    let dummyData: [ProfileItem] = [
        ProfileItem(iconName: "image01", title: "Driving Record"),
        ProfileItem(iconName: "image02", title: "Driving Guide"),
        ProfileItem(iconName: "icon3", title: "Friend Recommendation"),
        ProfileItem(iconName: "Icon04", title: "My Coupon"),
        ProfileItem(iconName: "image05", title: "Log Out")
    ]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dummyData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileList", for: indexPath) as! ProfileTableViewCell
        let item = dummyData[indexPath.row]
        
        //  cell.iconImageView.image = UIImage(systemName: "scooter")
        cell.iconImageView.image = UIImage(named: item.iconName)
        cell.textLabe.text = item.title
        cell.selectionStyle = .none
        
        return cell
    }
}



