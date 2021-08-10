//
//  Shows.swift
//  GankGirl
//
//  Created by 罗诗朋 on 2021/8/9.
//

import Foundation
class Shows {
    struct Returned: Codable {
       
//        var score: Double
        var show :Show
        
    }
    
    struct Show:Codable {
        var name:String
    }
    
    var urlString = "https://api.tvmaze.com/search/shows?q=alien"
    func getData(completed: @escaping()->()){
        
        guard let url = URL(string: urlString) else {
            print("URL ERROR")
            completed()
            return
        }
        
        let session = URLSession.shared
        let task = session.dataTask(with: url) { data, response, error in
            if let error = error {
                print("ERROR : \(error.localizedDescription)")
            }
            do {
                let returned = try JSONDecoder().decode([Returned].self, from: data!)
                print("JSON SCORE \(returned)")
                
            }catch{
                print("ERROR : \(error.localizedDescription)")
            }
        }
        task.resume()
    }
    
}
