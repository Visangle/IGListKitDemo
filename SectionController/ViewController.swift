//
//  ViewController.swift
//  SectionController
//
//  Created by bytedance on 2021/11/11.
//

import UIKit
import SnapKit
import Kingfisher
import Alamofire
import IGListKit


class ViewController: UIViewController, ListAdapterDelegate {
    func listAdapter(_ listAdapter: ListAdapter, willDisplay object: Any, at index: Int) {
        //
    }
    
    func listAdapter(_ listAdapter: ListAdapter, didEndDisplaying object: Any, at index: Int) {
        //
    }
    

    var collectionView: UICollectionView!
    
    lazy var adapter: ListAdapter = {
            
        let updater = ListAdapterUpdater()
        let adapter = ListAdapter.init(updater: updater, viewController: self, workingRangeSize: 0)
        adapter.collectionView = collectionView
        let dataSource = ProductDetailDataSource()
        adapter.dataSource = dataSource
       
        return adapter
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
        collectionView.backgroundColor = .white
        collectionView.frame = view.bounds
        view.addSubview(collectionView)
        let _ = adapter
        
    }
    


}

