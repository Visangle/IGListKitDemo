//
//  CustomerSectionController.swift
//  SectionController
//
//  Created by whw on 2021/11/12.
//

import IGListKit

final class CustomerSectionController: ListSectionController {
    
    private var currentCustomer: CustomerModel?
    
    override func didUpdate(to object: Any) {
        guard let obj = object as? CustomerModel else {
            return
        }
        currentCustomer = obj
    }
    
    override func cellForItem(at index: Int) -> UICollectionViewCell {
        guard let ctx = collectionContext else {
            return UICollectionViewCell()
        }
        let cell = ctx.dequeueReusableCell(of: CustomerCell.self, for: self, at: index)
        if let cell = cell as? CustomerCell {
            cell.updateWith(model: currentCustomer)
        }
        return cell
    }

    override func sizeForItem(at index: Int) -> CGSize {
        let width = collectionContext?.containerSize.width ?? 0
        return CGSize(width: width, height: 50)
    }
    
}
