

import UIKit

struct ProfileItem {
    let iconName: String
    let title: String
}


class ProfileViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.register(UINib(nibName: "CustomProfileCell", bundle: nil), forCellReuseIdentifier: "ProfileList")
        
        table.dataSource = self
        table.delegate = self
        table.separatorStyle = .none
        table.rowHeight = 85
    }
    

    // 더미 데이터
    let dummyData: [ProfileItem] = [
        ProfileItem(iconName: "image01", title: "주행 기록"),
        ProfileItem(iconName: "image02", title: "주행 가이드"),
        ProfileItem(iconName: "image03", title: "친구 추천"),
        ProfileItem(iconName: "image04", title: "나의 쿠폰"),
        ProfileItem(iconName: "image05", title: "로그아웃")
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


