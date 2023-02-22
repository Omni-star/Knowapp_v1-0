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
}

struct SearchSwiftUIView: View {
    @State
    var notes = [Note(name: "GaussianTheoreme", image: "libri"),
                 Note(name: "Klimt", image: "libri")]
    @State var searchText: String
    var body: some View {
        NavigationStack{
            List{
                ForEach(notes) { note in
                    NavigationLink(destination: EmptyView()) {
                        RowView(note: note)
                    }
                }
            }
        }
    }
}

struct RowView: View{
    var note: Note
    var body: some View{
        HStack{
            Image(note.image)
                .resizable()
                .frame(width: 60, height: 60)
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

/*
 NavigationStack { // prima si chiamava NavigationView
     List {
         ForEach(vehicles) { vehicle in NavigationLink(destination: VehicleView(vehicle: vehicle))
             {
                 RowView(vehicle: vehicle)
             }
         }.onDelete{(indexSet) in
             self.vehicles.remove(atOffsets: indexSet)
         }
         .swipeActions(edge: .leading){
             Button(action: {/*LOGIC*/}){
                 Label("Tag",systemImage: "tag")
             }.tint(Color(UIColor.systemYellow))
         }
     }
     .navigationBarTitle("Trasports",displayMode: .inline)
     
 }
 */
struct SearchSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SearchSwiftUIView(searchText: "")
    }
}

