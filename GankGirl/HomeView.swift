//
//  HomeView.swift
//  GankGirl
//
//  Created by 罗诗朋 on 2021/8/10.
//

import SwiftUI

struct HomeView: View {
    init() {
        UITableView.appearance().separatorStyle = .none
        UITableViewCell.appearance().selectionStyle = .none
    }
    
    var body: some View {
        NavigationView {
            
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
