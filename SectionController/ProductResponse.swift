//
//  ProductResponse.swift
//  SectionController
//
//  Created by whw on 2021/11/12.
//

import Foundation
import IGListDiffKit


struct ProductResponse {
    
    static let data: [ListDiffable] = [
        BannerModel(imgUrl: "https://cdn.poizon.com/pro-img/origin-img/20210730/a897390fd399429eb74aec2f2575f5f5.jpg"),
        CustomerModel(name: "绝绝子", avatar: "https://du.hupucdn.com/Fn_85xLxCs9jkXeROKkDCCBD7paZ?imageView/1/w/48/h/48", purchaseTime: "3小时前"),
        CustomerModel(name: "楽*忠", avatar: "https://cdn.poizon.com/du_app/2021/image/133088263_byte78281byte_123d7012c436f1dac34d82077df8e6a7_iOS_w969h969.jpg", purchaseTime: "3小时前"),
        CustomerModel(name: "讲*R", avatar: "https://du.hupucdn.com/FopKJAJnH2BCZ5M2MId0OmBVkvdp", purchaseTime: "3小时前"),
        CustomerModel(name: "失*J", avatar: "https://thirdwx.qlogo.cn/mmopen/vi_32/1eHglByxBNshAzOMmgICeJdXpMzv1MyZKMIJUY5I8NCPD0YvutyojN1CEuHqTQ4NOWicib5uRHwNopMAEicWUZsTA/132", purchaseTime: "4小时前")
        
    ]
}
