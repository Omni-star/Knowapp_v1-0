//
//  Q&AView.swift
//  Knowapp_v1-0
//
//  Created by alessiocrovella on 22/02/23.
//

import SwiftUI

struct Q_AView: View
{
    @State private var selected = 0
    var sezioni = ["QUESTIONS", "ADD QUESTIONS"]
    var body: some View
    {
            VStack
            {
                Text("Q&A")
                    .font(.largeTitle)
                    .fontWeight(.black)
                SegmentedView(captions: sezioni, selected: $selected)
                if selected == 0
                {
                    ZStack{
                        QuestionsView(searchText: "")
                    }
                } else {
                    ZStack{
                        AddQuestionsView()
                    }
                }
                Spacer()
            }
    }
}
struct SegmentedView: View
{
    var captions = Array<String>()
    @Binding var selected: Int

    var body: some View
    {
        VStack
        {
            Picker(selection: $selected, label: Text(""))
            {
                ForEach(0..<captions.count) { index in
                    Text(self.captions[index]).tag(index)
                }
            }.pickerStyle(SegmentedPickerStyle())
        }
    }
}


struct Q_AViewView_Previews: PreviewProvider
{
    static var previews: some View
    {
        Q_AView()
    }
}
