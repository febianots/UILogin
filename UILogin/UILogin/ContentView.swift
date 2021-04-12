//
//  ContentView.swift
//  UILogin
//
//  Created by MAC on 27/01/21.
//  Copyright © 2021 MAC. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("bancou")
            .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack(spacing:20){
              HandView()
              FormBox()
        }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HandView : View{
    var body : some View{
        VStack{
            Image(systemName: "hand.draw.fill")
                .resizable()
                .frame(width: 100, height: 100)
                .padding()
                .background(Color.black)
                .foregroundColor(.purple)
                .cornerRadius(20)
            
            Text("Hello Swift")
        }
    }
}


struct FormBox : View {
    @State var username : String = ""
    @State var password : String = ""
    var body: some View{
        VStack{
            Text("Username").font(.callout).bold()
            TextField("Username.." , text : $username).textFieldStyle(RoundedBorderTextFieldStyle())
            Text("Password").font(.callout).bold()
            SecureField("Password.." , text : $username).textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button(action : {print("Hello Button")}){
                Text("Sign In")
            }
            
            .padding()
            .background(Color.purple)
            .cornerRadius(10)
            .foregroundColor(Color.black)
        }
        .padding(.all,30)
        .background(Color.black)
        .cornerRadius(20)
        .foregroundColor(Color.purple)
    }
}
