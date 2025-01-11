//
//  SelectRace.swift
//  RPGdeMesa
//
//  Created by iredefbmac_22 on 07/01/25.
//

import SwiftUI

struct SelectRace: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 16) {
                    HStack{
                        SelectRaceButton(title: "Humano", click: {})
                        Spacer().frame(width: 16)
                        SelectRaceButton(title: "Elfos", click: {})
                    }
                    
                    HStack{
                        SelectRaceButton(title: "Anões", click: {})
                        Spacer().frame(width: 16)
                        SelectRaceButton(title: "Gnomos", click: {})
                    }
                
                HStack{
                    SelectRaceButton(title: "Halflings", click: {})
                    Spacer().frame(width: 16)
                    SelectRaceButton(title: "Draconatos", click: {})
                }
                
                HStack{
                    SelectRaceButton(title: "Tieflings", click: {})
                    Spacer().frame(width: 16)
                    SelectRaceButton(title: "Meio-Orcs", click: {})
                }
           }.padding(16)
       }
        
        Spacer()
            .frame(height: 24)
        RPGNextButton()
    }
}
#Preview {
    SelectRace()
}
