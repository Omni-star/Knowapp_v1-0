//
//  AddQuestionsView.swift
//  Knowapp_v1-0
//
//  Created by alessiocrovella on 22/02/23.
//

import SwiftUI

struct AddQuestionsView: View {
    
    var films = ["Episodio1","Episodio2","Episodio"]
    @State var question: String = ""
    @State var category: String = ""
    
    var body: some View
    {
            NavigationStack
            {
                    List
                {
                    VStack{
                        TextField("Insert your question", text: $question)
                            .position(x: 160, y: 20)
                            .border(.black)
                            .frame(height: 40)
                        TextField("Insert category", text: $category)
                            .position(x: 160, y: 20)
                            .border(.black)
                            .frame(height: 40)
                            .padding(.bottom, 150)
                        HStack{
                            Image(systemName: "paperplane")
                                .imageScale(.large)
                                .position()
                                .frame(width: 40)
                            Image(systemName: "link")
                                .imageScale(.large)
                                .position()
                        }
                    }.listRowBackground(RoundedRectangle(cornerRadius: 25)
                        .fill(Color("BackgroundItem")))
                }.background(Image("Q_ABackground"))
                    .scrollContentBackground(.hidden)
            }
    }
}

struct AddQuestionsView_Previews: PreviewProvider {
    static var previews: some View {
        AddQuestionsView()
    }
}
