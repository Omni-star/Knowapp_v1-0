//
//  QuestionsView.swift
//  Knowapp_v1-0
//
//  Created by alessiocrovella on 22/02/23.
//

import SwiftUI

struct QuestionsView: View
{
    
    @State var searchText: String
    var films = ["Episodio2","Episodio"]
    
    var body: some View
    {
            NavigationStack
            {
                    List
                {
                        VStack
                        {
                            NavigationLink (destination: EmptyView())
                            {
                                EmptyView()
                            }.opacity(0)
                            Text("Add yesterday")
                                .position(x: 45, y: 0)
                                .frame(height: CGFloat(10))
                            Text("Come svuotare un array in C\\C++?")
                                .frame(height: CGFloat(40))
                            Text("In C o in C++?\nIn C \n probabilmente avrai scritto qualcosa di simile: \n int * p = malloc (10 * sizeof(int)); \n …")
                        }
                        .listRowBackground(RoundedRectangle(cornerRadius: 25)
                            .fill(Color("BackgroundItem")))
                        Spacer().listRowBackground(Color.clear)
                }.background(Image("Q_ABackground"))
                    .scrollContentBackground(.hidden)
            }.searchable(text: $searchText)
    }

    //    variabile calcolata al momento
    var filtered: [String]
    {
        if searchText.isEmpty
        {
            return films
        } else
        {
            return films.filter({(nome: String)
                -> Bool in
                if nome.lowercased().contains(searchText.lowercased())
                {
                    return true
                }
                else
                {
                    return false
                }
            })
        }
    }
}

struct QuestionsView_Previews: PreviewProvider
{
    static var previews: some View
{
        QuestionsView(searchText: "")
    }
}
