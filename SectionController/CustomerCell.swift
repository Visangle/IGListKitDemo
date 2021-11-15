//
//  CustomerCell.swift
//  SectionController
//
//  Created by bytedance on 2021/11/12.
//

import UIKit
import Kingfisher

class CustomerCell: UICollectionViewCell {
    
    private var nameLabel = UILabel()
    private var avatarLabel = UIImageView()
    private var purchaseTimeLabel = UILabel()
    
    func updateWith(model: CustomerModel?) {
        nameLabel.text = model?.name
        avatarLabel.kf.setImage(with: URL(string: model?.avatar ?? ""))
        purchaseTimeLabel.text = model?.purchaseTime
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(nameLabel)
        contentView.addSubview(avatarLabel)
        contentView.addSubview(purchaseTimeLabel)
        
        nameLabel.font = UIFont.systemFont(ofSize: 13)
        nameLabel.textColor = UIColor.gray
        
        avatarLabel.layer.cornerRadius = 15
        avatarLabel.clipsToBounds = true
        
        purchaseTimeLabel.font = UIFont.systemFont(ofSize: 12)
        purchaseTimeLabel.textColor = UIColor.lightGray
        
        avatarLabel.snp.makeConstraints { make in
            make.left.equalTo(10)
            make.centerY.equalToSuperview()
            make.width.height.equalTo(30)
        }
        nameLabel.snp.makeConstraints { make in
            make.left.equalTo(avatarLabel.snp.right).offset(12)
            make.centerY.equalToSuperview()
        }
        purchaseTimeLabel.snp.makeConstraints { make in
            make.right.equalTo(-30)
            make.centerY.equalToSuperview()
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
