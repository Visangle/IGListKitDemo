//
//  ProductDetailDataSource.swift
//  SectionController
//
//  Created by whw on 2021/11/12.
//

import Foundation
import IGListKit

class ProductDetailDataSource: NSObject, ListAdapterDataSource {
    func objects(for listAdapter: ListAdapter) -> [ListDiffable] {
        return ProductResponse.data
    }
    
    func listAdapter(_ listAdapter: ListAdapter, sectionControllerFor object: Any) -> ListSectionController {
        if object is BannerModel {
            return BannerSectionController()
        } else {
            return CustomerSectionController()
        }
    }
    
    func emptyView(for listAdapter: ListAdapter) -> UIView? {
        return nil
    }
    
    
    
    
}
