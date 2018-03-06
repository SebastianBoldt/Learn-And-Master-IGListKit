//
//  Created by Sebastian Boldt on 06.03.18.
//  Copyright © 2018 Sebastian Boldt. All rights reserved.
//

import UIKit

class AdCell: UICollectionViewCell {
    @IBOutlet weak var adLabel: UILabel!
    
    func updateWithAd(ad: Ad) {
        adLabel.text = ad.description
    }
}
