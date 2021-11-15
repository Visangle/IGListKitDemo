//
//  BannerCell.swift
//  SectionController
//
//  Created by bytedance on 2021/11/12.
//

import UIKit



class BannerCell: UICollectionViewCell {
    
    private var imageView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.addSubview(imageView)
        imageView.frame = contentView.bounds
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func updateWith(banner: BannerModel?) {
        imageView.kf.setImage(with: URL(string: banner?.imgUrl ?? ""))
    }
    
}
