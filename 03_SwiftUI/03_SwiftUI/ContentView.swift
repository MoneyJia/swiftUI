//
//  ContentView.swift
//  03_SwiftUI
//
//  Created by money on 2023/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        //包括leading、trailing、center
//        VStack(alignment:.leading, spacing: 20){
//            Text("orange").background(.orange).font(.caption)
//            Text("red").background(.red).font(.title)
//            Text("blue").background(.blue).font(.largeTitle)
//            Text("yellow").background(.yellow).font(.callout)
//        }
//        .border(.gray)
//        //包括bottom、top、firstTextBaseline、lastTextBaseline、center、
//        HStack(alignment:.bottom, spacing: 20){
//            Text("orange").background(.orange).font(.caption)
//            Text("red").background(.red).font(.title)
//            Text("blue").background(.blue).font(.largeTitle)
//            Text("yellow").background(.yellow).font(.callout)
//        }
//        .border(.gray)
//        //包括leading、trailing、bottom、top、bottomLeading、topLeading、bottomtrailing、toptrailing、center
//        ZStack(alignment: .bottomTrailing){
//            Text("orange").background(.orange).font(.caption)
//            Text("red").background(.red).font(.title)
//            Text("blue").background(.blue).font(.largeTitle)
//            Text("yellow").background(.yellow).font(.callout)
//        }
//        .border(.gray)
        
        
//        VStack {
//            ZStack {
//                Circle()
//                    .fill(Color.yellow)
//                Button(action:{
//                    print("button tapped")
//                }){
//                    Text("Press Me")
//                }
//            }
//            .frame(width: 100.0, height: 100.0)
//            VStack(alignment: .leading, spacing: 4) { Text("Beginning SwiftUI")
//                Text("Greg Lim, 2021")
//            }
//        }
        
        
//        ScrollView {
//            LazyVStack {
//                ForEach(1...100, id: \.self) {
//                    Text("Cell \($0)").padding()
//                }
//            }
//        }
//
//        VStack (spacing:50){
//            Text("Offset by passing CGSize()")
//                .border(Color.green)
//                .offset(CGSize(width: 20, height: 25))
//                .border(Color.gray)
//
//            Text("Offset by passing horizontal & vertical distance")
//                .border(Color.green)
//                .offset(x: 20, y: 50)
//                .border(Color.gray)
//        }
//
//
        
        
        
        
        VStack (spacing:50){
            Text("Position by passing a CGPoint()")
                .background(Color.blue)
                .position(CGPoint(x: 175, y: 100))
                .background(Color.green)
            
            Text("Position by passing the x and y coordinates")
                .background(Color.blue)
                .position(CGPoint(x: 175, y: 100))
                .background(Color.green)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
