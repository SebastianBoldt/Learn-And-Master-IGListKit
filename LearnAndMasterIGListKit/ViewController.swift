//
//  Created by Sebastian Boldt on 06.03.18.
//  Copyright © 2018 Sebastian Boldt. All rights reserved.
//

import UIKit
import IGListKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    lazy var adapter: ListAdapter =  {
        let updater = ListAdapterUpdater()
        let adapter = ListAdapter(updater: updater, viewController: self, workingRangeSize: 0)
        adapter.collectionView = collectionView
        adapter.dataSource = SuperHeroDataSource()
        return adapter
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        _ = adapter
    }
}
