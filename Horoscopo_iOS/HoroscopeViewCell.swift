//
//  HoroscopeViewCell.swift
//  Horoscopo_iOS
//
//  Created by Tardes on 12/12/24.
//

import UIKit

class HoroscopeViewCell: UITableViewCell {
    
  
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func render(from horoscope: Horoscope)
    {
        iconImageView.image = horoscope.icon
        nameLabel.text = horoscope.name
        dateLabel.text = horoscope.dates
        
    }

}
