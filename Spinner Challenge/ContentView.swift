//
//  ContentView.swift
//  Spinner Challenge
//
//  Created by Skander Thabet on 11/2/2022.
//

import SwiftUI

struct ContentView: View {
    @State var credits = 1000
    @State var slot1 = 1
    @State var slot2 = 1
    @State var slot3 = 1
    var body: some View {
        VStack(spacing: 20.0) {
            Text("SwiftUI Slots!")
                .font(.largeTitle)
                .padding()
            Spacer()
            Text("Credits : \(credits)")
            Spacer()
            HStack(){
                Image("fruit\(slot1)").resizable()
                    .aspectRatio(contentMode: .fit)
                    
                Image("fruit\(slot2)").resizable()
                    .aspectRatio(contentMode: .fit)
                    
                Image("fruit\(slot3)").resizable()
                    .aspectRatio(contentMode: .fit)
                    
            
            }
            Spacer()
            Button(action: {
                slot1=Int.random(in: 1...3)
                slot2=Int.random(in: 1...3)
                slot3=Int.random(in: 1...3)
                if(slot1==slot2 && slot2==slot3){
                    credits += 15
                }
                else {
                    credits -= 15
                }
            }, label: {
                Text("Spin")
                    .fontWeight(.medium)
                    .foregroundColor(Color.white)
                
            })
                .padding(.horizontal, 40)
                .padding(.vertical,10)
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.936, saturation: 1.0, brightness: 1.0)/*@END_MENU_TOKEN@*/)
                .cornerRadius(20)
            Spacer()
                
                
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
        }
    }
}
