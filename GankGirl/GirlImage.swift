//
//  WebImageView.swift
//  GankGirl
//
//  Created by 罗诗朋 on 2021/8/10.
//

import SwiftUI
import SDWebImageSwiftUI
struct GirlImage: View {
    let url: URL?
    
    var body: some View{
        WebImage(url: url)
            .placeholder { Color.gray}
            .resizable()
            .scaledToFill()
            .frame(height: 600)
            .clipped()
        
    }
   
}


