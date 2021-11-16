//
//  BannerSectionController.swift
//  SectionController
//
//  Created by whw on 2021/11/12.
//

import Foundation
import IGListKit

class BannerSectionController: ListSectionController {
    
    private var currentBanner: BannerModel?
    
    override func didUpdate(to object: Any) {
        guard let obj = object as? BannerModel else {
            return
        }
        currentBanner = obj
    }
    
    override func numberOfItems() -> Int {
        1
    }
    
    override func cellForItem(at index: Int) -> UICollectionViewCell {
        guard let ctx = collectionContext else {
            return UICollectionViewCell()
        }
        let cell = ctx.dequeueReusableCell(of: BannerCell.self, for: self, at: index)
        if let cell = cell as? BannerCell {
            cell.updateWith(banner: currentBanner)
        }
        return cell
    }

    override func sizeForItem(at index: Int) -> CGSize {
        let width = collectionContext?.containerSize.width ?? 0
        return CGSize(width: width, height: width/750*480)
    }
    
}
