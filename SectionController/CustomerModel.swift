//
//  CustomerModel.swift
//  SectionController
//
//  Created by whw on 2021/11/12.
//
import IGListKit

class CustomerModel: ListDiffable {
    func diffIdentifier() -> NSObjectProtocol {
        return self.identifier as NSString
    }
    
    func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        guard let object = object as? CustomerModel else {
            return false
        }
        return self.identifier == object.identifier
    }
    
    private var identifier: String = UUID().uuidString
    private(set) var name: String
    private(set) var avatar: String
    private(set) var purchaseTime: String
    
    init(name: String, avatar: String, purchaseTime: String) {
        self.name = name
        self.avatar = avatar
        self.purchaseTime = purchaseTime
    }
    
    
}
