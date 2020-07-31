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
            HStack {
                
                //box green
                PricingView()
                
                //box gray
                /*VStack{
                    Text("Carrera")
                        .font(.system(.title, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    Text("$10.99")
                        .font(.system(size: 30, weight: .heavy, design: .rounded))
                        .foregroundColor(Color.white)
                    
                    Text("Toda una carrera")
                        .font(.system(size: 20, weight: .regular, design: .rounded))
                        .foregroundColor(Color.white)
                }
                .frame(minWidth:0, maxWidth: .infinity, minHeight: 100)
                .padding(30)
                .background(Color.gray)
                .cornerRadius(6)*/
            }.padding(.horizontal)
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
        VStack(alignment: .leading, spacing: 0){
            Text("select your ")
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.black)
            
            
            Text("itinerary for learning")
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.black)
        }
    }
}

struct PricingView: View {
    
 
    
    var body: some View {
        VStack{
            Text("Básico")
                .font(.system(.title, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            Text("$9.99")
                .font(.system(size: 30, weight: .heavy, design: .rounded))
                .foregroundColor(Color.white)
            
            Text("Un Curso Icluido")
                .font(.system(size: 20, weight: .regular, design: .rounded))
                .foregroundColor(Color.white)
        }
        .frame(minWidth:0, maxWidth: .infinity, minHeight: 100)
        .padding(30)
        .background(Color.gray)
        .cornerRadius(6)
    }
}
