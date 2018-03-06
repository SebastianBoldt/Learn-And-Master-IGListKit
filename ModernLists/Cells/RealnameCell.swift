//
//  Created by Sebastian Boldt on 06.03.18.
//  Copyright © 2018 Sebastian Boldt. All rights reserved.
//

import Foundation
import UIKit

class RealnameCell: UICollectionViewCell, SuperHeroModelUpdatable {
    
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var iconLabel: UILabel!

    
    func updateWith(superHero: SuperHero) {
        firstNameLabel.text = superHero.firstName
        lastNameLabel.text = superHero.lastName
        iconLabel.text = superHero.icon
    }
}
