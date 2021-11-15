//
//  BannerModel.swift
//  SectionController
//
//  Created by bytedance on 2021/11/12.
//

import IGListKit

class BannerModel: ListDiffable {
    func diffIdentifier() -> NSObjectProtocol {
        return self.identifier as NSString
    }
    
    func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        guard let object = object as? BannerModel else {
            return false
        }
        return self.identifier == object.identifier
    }
    
    
    private var identifier: String = UUID().uuidString
    private(set) var imgUrl: String
    
    init(imgUrl: String) {
        self.imgUrl = imgUrl
    }
    
    
    
}
