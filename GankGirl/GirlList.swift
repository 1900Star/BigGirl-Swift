//
//  GirlList.swift
//  GankGirl
//
//  Created by 罗诗朋 on 2021/8/10.
//

import SwiftUI
let girlUrl = "data/category/Girl/type/Girl/page/1/count/10"
struct GirlList: View {

    var body: some View {
        Text("Gank Girl")
            .foregroundColor(.orange)
            .fontWeight(.heavy)
            .font(.custom("Glober", fixedSize: 20))
        
      
    }
}

struct GirlList_Previews: PreviewProvider {
    static var previews: some View {
        GirlList()
    }
}
