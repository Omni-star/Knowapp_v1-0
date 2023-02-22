//
//  SearchSwiftUIView.swift
//  Search
//
//  Created by francescapetrone on 17/02/23.
//
import SwiftUI
struct Note : Identifiable{
    var id = UUID() //dal protocollo identifiable
    var name: String
    var image: String
    var arrow: String
}

struct SearchSwiftUIView: View {
    @State
    var notes = [Note(name: "GaussianTheoreme", image: "", arrow: "arrow.counterclockwise"),
                 Note(name: "Klimt", image: "", arrow: "arrow.counterclockwise"),
                 Note(name: "aaaa", image: "", arrow: "arrow.counterclockwise")]
    @State var searchText: String
    var body: some View {
        NavigationView{
            List{
                ForEach(notes) { note in
                    NavigationLink(destination: NoteView(note: note)) {
                        RowView(note: note)
                    }
                }
            }
        }.searchable(text: $searchText)
    }
    }

struct RowView: View{
    var note: Note
    var body: some View{
        HStack{
            Image(systemName: note.arrow)
                .resizable()
                .frame(width: 15, height: 15)
            Text(note.name)
        }
    }
}

  /*  //    variabile calcolata al momento
    var filtered: [String] {
        if searchText.isEmpty {
            return notes
        } else {
            return notes.filter({(nome: String)
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
*/


struct SearchSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SearchSwiftUIView(searchText: "")
    }
}

