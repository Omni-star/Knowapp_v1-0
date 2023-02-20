//
//  SearchSwiftUIView.swift
//  Search
//
//  Created by francescapetrone on 17/02/23.
//
import SwiftUI

struct SearchSwiftUIView: View {
    var films = ["Gaussian theorem","Molecule","Klimt"]
    @State var searchText: String
    var body: some View {
        NavigationView {
            List {
                ForEach(filtered, id:\.self) {
                    film in NavigationLink (destination: EmptyView()) {
                        VStack {
                            Text(film)
                        }
                    }
                }
            }
        }.searchable(text: $searchText)
    }

    //    variabile calcolata al momento
    var filtered: [String] {
        if searchText.isEmpty {
            return films
        } else {
            return films.filter({(nome: String)
                -> Bool in
                if nome.contains(searchText) {
                    return true
                }
                else {
                    return false
                }
            })
        }
    }
}

struct SearchSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SearchSwiftUIView(searchText: "")
    }
}

