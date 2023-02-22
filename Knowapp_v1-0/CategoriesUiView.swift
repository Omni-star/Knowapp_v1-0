//
//  CategoriesUiView.swift
//  Knowapp_v1-0
//
//  Created by eupliodemaio on 22/02/23.
//

import SwiftUI
struct Cate : Identifiable{
    var id = UUID() //dal protocollo identifiable
    var name: String
    var image: String
}

struct CategoriesSwiftUIView: View {
    @State var rect = [Rectangle] ()
    var body: some View {
        NavigationStack{
            VStack{
                ZStack{
                    Image("libri")
                        .resizable()
                        .scaledToFit()
                    Spacer()
                    HStack{
                        Text("Welcome")
                            .foregroundColor(Color(red:0.729,green: 0.0,blue: 0.0))
                            .fontWeight(.bold)
                            .font(.custom("AmericanTypewriter", size: 34))
                            .padding(.leading)
                        Spacer()
                        
                    }
                }
                Spacer()
                
                VStack{
                    VerticalView()
                }
                
            }.ignoresSafeArea()
        }
    }
}

struct HorizontalView: View{
    var body: some View{
        HStack{
            Text("Recent")
                .foregroundColor(Color(red:0.729,green: 0.0,blue: 0.0))
                .fontWeight(.bold)
                .font(.custom("AmericanTypewriter", size: 34))
            Spacer()
            
            
        }.padding(.leading)
        
        Spacer()
        ScrollView(.horizontal) {
            HStack(spacing: 5) {
                ForEach(0..<4) {
                    i in VStack {
                        Text("Item \(i)")
                            .font(.largeTitle)
                            .frame(width: 170, height: 160)
                            .background(Color(red: 0.729, green: 0.0, blue: 0.0))
                            .foregroundColor(.white)
                    }.cornerRadius(20)
                }
            }
        }.padding(.leading,5)
    }
}

struct VerticalView: View{
    var body: some View{
        
        ScrollView{
            HorizontalView()
            HStack{
                Text("Categories")
                    .foregroundColor(Color(red:0.729,green: 0.0,blue: 0.0))
                    .fontWeight(.bold)
                    .font(.custom("AmericanTypewriter", size: 34))
                Spacer()
            }.padding(.leading)
            
            VStack(spacing: 5) {
                ForEach(0..<4) {
                    j in ScrollView(.horizontal) {
                        
                        HStack(spacing: 5) {
                            ForEach(0..<2) {
                                i in VStack {
                                    Text("Item \(i)")
                                        .font(.largeTitle)
                                        .frame(width: 200, height: 180)
                                        .background(Color(red: 0.729, green: 0.0, blue: 0.0))
                                        .foregroundColor(.white)
                                }.cornerRadius(20)
                            }
                        }.padding(.leading,10)
                    }
                }
            }.background(.white)
                .opacity(0.9)
        }.edgesIgnoringSafeArea(.all)
    }
}
       
    
    struct CategoriesSwiftUIView_Previews: PreviewProvider {
        static var previews: some View {
            CategoriesSwiftUIView()
        }
    }
    
