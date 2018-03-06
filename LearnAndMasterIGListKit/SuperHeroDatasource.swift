//
//  Created by Sebastian Boldt on 06.03.18.
//  Copyright © 2018 Sebastian Boldt. All rights reserved.
//

import IGListKit

class SuperHeroDataSource: NSObject, ListAdapterDataSource {
    func objects(for listAdapter: ListAdapter) -> [ListDiffable] {
        return Constants.objects
    }
    
    func listAdapter(_ listAdapter: ListAdapter, sectionControllerFor object: Any) -> ListSectionController {
        if object is SuperHero {
            return SuperHeroSectionController()
        } else {
            return AdSectionController()
        }
    }
    
    func emptyView(for listAdapter: ListAdapter) -> UIView? {
        return nil
    }
}
