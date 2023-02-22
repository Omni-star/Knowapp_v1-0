//
//  NoteView.swift
//  Knowapp_v1-0
//
//  Created by eupliodemaio on 22/02/23.
//

import SwiftUI

struct NoteView: View {
    var note: Note
    var body: some View {
        Text(note.name)
    }
}

struct NoteView_Previews: PreviewProvider {
    static var previews: some View {
        NoteView(note: Note(name: "", image: "", arrow: ""))
    }
}
