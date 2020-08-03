//
//  ContentView.swift
//  stackSwiftUI
//
//  Created by Carlos Erices mendez on 31-07-20.
//  Copyright © 2020 Carlos Erices mendez. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //Vertical stack for text title
        VStack {
            ExtractedView()
            HeadCard()
            BigCard()
            Spacer()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ExtractedView: View {
    var body: some View {
        HStack{
            VStack(alignment: .leading, spacing: 4){
                Text("Elige tu itinerario ")
                    .font(.system(.largeTitle, design: .rounded))
                    .fontWeight(.black)
                
                
                Text("de aprendeizaje")
                    .font(.system(.largeTitle, design: .rounded))
                    .fontWeight(.black)
            }
            Spacer()
        }.padding(15)
    }
}

struct PricingView: View {
    
    var title: String
    var price: String
    var icon: String?
    var textColor: Color
    var backgrounColor: Color
    var subTitle: String
    
    var body: some View {
        VStack{
            icon.map({
                Image(systemName: $0)
                    .font(.largeTitle)
                    .foregroundColor(Color.white)
            })
            Text(title)
                .font(.system(.title, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(textColor)
            
            Text(price)
                .font(.system(size: 30, weight: .heavy, design: .rounded))
                .foregroundColor(textColor)
            
            Text(subTitle)
                .font(.system(size: 20, weight: .regular, design: .rounded))
                .foregroundColor(textColor)
        }
        .frame(minWidth:0, maxWidth: .infinity, minHeight: 100)
        .padding(30)
        .background(backgrounColor)
        .cornerRadius(6)
    }
}

struct HeadCard: View {
    var body: some View {
        HStack(spacing: 15) {
            
            //box green
            PricingView(title: "Básico", price: "$9.99", textColor: Color.white, backgrounColor: Color.green, subTitle: "Un Curso Incluido")
            ZStack{
                //box blue
                PricingView(title: "Carrera", price: "$9.99", textColor: Color.white, backgrounColor: Color.blue, subTitle: "Un carrera Incluida")
                
                Text("lo mejor para empezar")
                    .font(.system(.caption, design: .rounded))
                    .foregroundColor(Color.white)
                    .padding(8)
                    .cornerRadius(6)
                    .background(Color.red)
                    .offset(x: 0, y : -80)
            }
        }.padding(.horizontal)
    }
}

struct BigCard: View {
    var body: some View {
        ZStack{
            //box green
            PricingView(title: "Definitivo", price: "$99.99", icon: "lightbulb", textColor: Color.white, backgrounColor: Color.yellow, subTitle: "Todo los cursos online")
                .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
        }.padding(.vertical)
    }
}
