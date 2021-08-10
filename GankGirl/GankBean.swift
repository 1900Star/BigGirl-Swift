//
//  GankBean.swift
//  GankGirl
//
//  Created by 罗诗朋 on 2021/8/10.
//

import Foundation

struct GankBean: Codable {
   
    let data: [Gank]
    let page,page_count,status,total_counts: Int
    
}

struct Gank: Codable {
    let _id,author,category,createdAt,desc,publishedAt,title,type,url: String
    let likeCounts,stars,views: Int
    let images: [String]
    
}


//
//
//{
//"data": [
//
//
//{
//"_id": "5e95915f808d6d2fe6b56ed3",
//"author": "鸢媛",
//"category": "Girl",
//"createdAt": "2020-05-16 08:00:00",
//"desc": "若不是情深似海，思念又怎会泛滥成灾。",
//"images": [
//"http://gank.io/images/bdb35e4b3c0045c799cc7a494a3db3e0"
//],
//"likeCounts": 3,
//"publishedAt": "2020-05-16 08:00:00",
//"stars": 1,
//"title": "第87期",
//"type": "Girl",
//"url": "http://gank.io/images/bdb35e4b3c0045c799cc7a494a3db3e0",
//"views": 6137
//}
//],
//"page": 1,
//"page_count": 10,
//"status": 100,
//"total_counts": 96
//}
