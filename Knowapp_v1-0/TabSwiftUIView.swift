//
//  TabSwiftUIView.swift
//  Knowapp_v1-0
//
//  Created by alessiocrovella on 21/02/23.
//

import SwiftUI



struct TabSwiftUIView: View {
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor(.black)
        UITabBar.appearance().unselectedItemTintColor = UIColor(Color("UnselectedItem"))
    }
    
    var body: some View {
        TabView {
            VStack {
                CategoriesSwiftUIView()
            }
            .tabItem {
                Label("Categories", systemImage: "book")
            }
            VStack {
                Q_AView()
            }
            .tabItem {
                Label("Q&A", systemImage: "message.fill")
            }
            VStack {
                SearchSwiftUIView(searchText: "")
            }
            .tabItem {
                Label("Search", systemImage: "magnifyingglass")
            }
        }.tint(Color("AccentColor"))
    }
}

struct TabSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        TabSwiftUIView()
    }
}
