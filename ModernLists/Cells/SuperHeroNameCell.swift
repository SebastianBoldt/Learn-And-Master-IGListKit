//
//  Created by Sebastian Boldt on 06.03.18.
//  Copyright © 2018 Sebastian Boldt. All rights reserved.
//

import UIKit

class SuperHeroNameCell: UICollectionViewCell, SuperHeroModelUpdatable {
    
    @IBOutlet weak var superHeroNameLabel: UILabel!

    func updateWith(superHero: SuperHero) {
        superHeroNameLabel.text = superHero.superHeroName
    }
}
