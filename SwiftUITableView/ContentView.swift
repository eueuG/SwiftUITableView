//
//  ContentView.swift
//  SwiftUITableView
//
//  Created by 野田凜太郎 on 2021/03/23.
//

import SwiftUI

struct Player: Identifiable {
   // var id: ObjectIdentifier 多分これで番号ふっても同じかも
    var id: Int
    
    let name: String
    let image: Image
}


struct ContentView: View {
    
    let players: [[Player]] = [
        [.init(id: 0, name: "Bill Frisel", image: Image("Bill_Frisel")),
        .init(id: 1, name: "Joe Pass", image: Image("Joe_Pass")),
        .init(id: 2, name: "Pat Metheny", image: Image("Pat_Metheny")),
        .init(id: 1, name: "Joe Pass", image: Image("Joe_Pass")),
        .init(id: 2, name: "Pat Metheny", image: Image("Pat_Metheny"))],
        
        [.init(id: 0, name: "Bill Frisel", image: Image("Bill_Frisel")),
        .init(id: 1, name: "Joe Pass", image: Image("Joe_Pass")),
        .init(id: 2, name: "Pat Metheny", image: Image("Pat_Metheny")),
        .init(id: 1, name: "Joe Pass", image: Image("Joe_Pass")),
        .init(id: 2, name: "Pat Metheny", image: Image("Pat_Metheny"))],

        [.init(id: 0, name: "Bill Frisel", image: Image("Bill_Frisel")),
        .init(id: 1, name: "Joe Pass", image: Image("Joe_Pass")),
        .init(id: 2, name: "Pat Metheny", image: Image("Pat_Metheny")),
        .init(id: 1, name: "Joe Pass", image: Image("Joe_Pass")),
        .init(id: 2, name: "Pat Metheny", image: Image("Pat_Metheny"))]
    ]
    
    
    var body: some View {
        NavigationView{
            List {
                ForEach(players.startIndex...(players.endIndex) - 1), id: \.self) {
                    section in
                    ForEach(self.players[section]) {_ in
                            HStack{
                                player.image
                                    .resizable()
                                    .scaledToFill()
                                    .clipShape(Circle())
                                    .frame(width: 50, height: 50)
                                Text(player.name)
                                    .font(.headline)
                                    .padding(.leading, 20)
                            }
                    
                    }
                }
                
                //上の配列を多次元にしたときにここをコメントアウトしました
//                ForEach(players){player in
//                    HStack{//HStackを使うと画像と名前が同じセルに入る
//                        player.image
//                            .resizable()
//                            .scaledToFill()
//                            .clipShape(Circle())
//                            .frame(width: 50, height: 50)
//                        Text(player.name)
//                            .font(.headline)
//                            .padding(.leading, 20)
//                    }
                       // Text("Hello, world!")
                                   //.padding()
                        //Text("Hello, world!")
            }.navigationBarTitle(Text("Jazz Guitarist"))
        
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
