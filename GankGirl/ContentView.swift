//
//  ContentView.swift
//  GankGirl
//
//  Created by 罗诗朋 on 2021/8/9.
//

import SwiftUI

struct ContentView: View {
    var shows = Shows()
    var viewModel = ViewModel()
    
    let girlUrl = "data/category/Girl/type/Girl/page/1/count/10"
    var body: some View {
        VStack {
            Text("Smartisan OS")
                .padding()
            Button(action: {
                print("get Girl")
//                shows.getData {
//                    print("取到的数据")
//                }
                
               
                viewModel.getGirlData {

                    print("取到的数据")
                }
//                self.getGirlData()
                
            }){
                Text("Get").font(.largeTitle)
            }
            
        }
       
    }
    func getGirlData(){
        NetworkApi.getGrilList(url: girlUrl) { result in
            switch result {
            case let .success(gankBean):
                print(gankBean.total_counts)
                
                gankBean.data.forEach({ gank in
                    print(gank.images.forEach({ imgUrl in
                        print(imgUrl)
                        
                    }))
                    
                })

                
                
            
            case let .failure(error): print("没有找到妹子\(error.localizedDescription)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
