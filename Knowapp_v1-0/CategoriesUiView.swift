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
                        Spacer()
                        
                    }
                }
                Spacer()
                
                
            }.ignoresSafeArea()
        }
    }
}
       
    
    struct CategoriesSwiftUIView_Previews: PreviewProvider {
        static var previews: some View {
            CategoriesSwiftUIView()
        }
    }
    
