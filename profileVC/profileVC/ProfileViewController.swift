

import UIKit

class ProfileViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var table: UITableView!
    
    
    struct ProfileItem {
        let iconName: String
        let title: String
    }
    
    // 더미 데이터
    let dummyData: [ProfileItem] = [
        ProfileItem(iconName: "icon1", title: "주행 기록"),
        ProfileItem(iconName: "icon2", title: "주행 가이드"),
        ProfileItem(iconName: "icon3", title: "친구 추천"),
        ProfileItem(iconName: "icon4", title: "나의 쿠폰"),
        ProfileItem(iconName: "icon5", title: "로그 아웃")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.dataSource = self
        table.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dummyData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomProfileCell", for: indexPath) as! CustomProfileCell
        let item = dummyData[indexPath.row]
        
        cell.iconImageView.image = UIImage(named: item.iconName)
        cell.titleLabel.text = item.title
        
        return cell
    }
}

class CustomProfileCell: UITableViewCell {
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
}
