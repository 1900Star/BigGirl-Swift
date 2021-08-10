//
//  NetworkApi.swift
//  Pods
//
//  Created by 罗诗朋 on 2021/8/7.
//

import Foundation

class NetworkApi {
    
    // GankGirl列表
    static func getGrilList(url: String,completion: @escaping (Result<GankBean,Error>) -> Void ) {

        NetworkManager.shared.requestGetGirl(path: url, parameter: nil) { result in
            switch result {
            case let .success(data):
                print("Aaaaaaaa")
                
                let parseResult: Result<GankBean,Error> = self.parseData(data)
                completion(parseResult)
            case let .failure(error):
                completion(.failure(error))

            }
        }
    }
//    
 
    
    // 解析数据
    private static func parseData<T: Decodable>(_ data: Data)-> Result <T,Error>{
    
        
        guard let decodeData = try? JSONDecoder().decode(T.self, from: data) else {
            let error = NSError(domain: "NetworkApiError", code: 0, userInfo: [NSLocalizedDescriptionKey: "Can not parse data"])
            
            return .failure(error)
        }
        return .success(decodeData)
    }
    
}

