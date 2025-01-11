//
//  SelectRace.swift
//  RPGdeMesa
//
//  Created by iredefbmac_22 on 07/01/25.
//

import SwiftUI

struct SelectRace: View {
    var body: some View {
        ScrollView{
            HStack{
                SelectRaceButton(title: "Humano", click: {})
                Spacer()
                    .frame(width: 16)
                SelectRaceButton(title: "Elfos", click: {})
            }
            Spacer()
                .frame(height: 16)
            HStack{
                SelectRaceButton(title: "Anões", click: {})
                Spacer()
                    .frame(width: 16)
                SelectRaceButton(title: "Gnomos", click: {})
            }
            Spacer()
                .frame(height: 16)
            SelectRaceButton(title: "Draconatos", click: {})
            Spacer()
                .frame(height: 16)
            RPGNextButton(onClick: {})
        }
    }
}

#Preview {
    SelectRace()
}
