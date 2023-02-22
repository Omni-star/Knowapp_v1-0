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
    var films = ["Episodio1","Episodio2","Episodio"]
    
    var body: some View
    {
            NavigationStack
            {
                    List
                {
                    ForEach(filtered, id:\.self)
                    {
                        film in ZStack{
                            NavigationLink (destination: EmptyView())
                            {
                                EmptyView()
                            }.opacity(0)
                            VStack
                            {
                                Text(film)
                                Image("stanford").resizable().scaledToFit()
                            }
                        }
                    }
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
