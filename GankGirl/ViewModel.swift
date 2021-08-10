//
//  ViewModel.swift
//  GankGirl
//
//  Created by 罗诗朋 on 2021/8/10.
//

import Foundation
class ViewModel {
    func getGirlData(completed: @escaping()->()){
        
        guard let url = URL(string: "https://gank.io/api/v2/data/category/Girl/type/Girl/page/1/count/10") else {
            print("URL ERROR")
            completed()
            return
        }
        
        
        let session = URLSession.shared
           let task = session.dataTask(with: url) { data, response, error in
            if let error = error {
                print("ERROR : \(error.localizedDescription)")
            }
            let decoded = try? JSONDecoder().decode(GankBean.self, from: data!)
            print("CCCCCCCCCCC")
            print(decoded!.page as Int)
            print(decoded!.page_count as Int)
            print(decoded!.status as Int)
            print(decoded!.total_counts as Int)
            print(decoded!.data.count)
            
            decoded?.data.forEach({ gank in
                print(gank.images.forEach({ imgUrl in
                    print(imgUrl)
                }))
                
            })
//            do {
//               
//            }
        }
        task.resume()
        
    }
    
    
    
    
    
}
