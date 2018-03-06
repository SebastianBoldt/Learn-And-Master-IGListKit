//
//  Created by Sebastian Boldt on 06.03.18.
//  Copyright © 2018 Sebastian Boldt. All rights reserved.
//

import IGListKit

class SuperHero: ListDiffable {
    
    private var identifier: String = UUID().uuidString
    private(set) var firstName: String
    private(set) var lastName: String
    private(set) var superHeroName: String
    private(set) var icon: String
    
    init(firstName: String, lastName: String, superHeroName: String, icon: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.superHeroName = superHeroName
        self.icon = icon
    }
    
    func diffIdentifier() -> NSObjectProtocol {
        return identifier as NSString
    }
    
    func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        guard let object = object as? SuperHero else {
            return false
        }
        
        return self.identifier == object.identifier
    }
}
