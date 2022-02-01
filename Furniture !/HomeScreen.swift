//
//  HomeScreen.swift
//  Furniture !
//
//  Created by Shashwat . on 31/01/22.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        NavigationView {
            VStack {
                HomeScreen1()
            }
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}

struct navigationBar: View {
    var body: some View {
        HStack{
            Button(action:{}){
                Image("menu")
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10.0)
            }
            Spacer()
            Button(action:{}){
                Image(systemName: "person.fill")
                    .font(.title2)
                    .foregroundColor(Color.brown)
                    .frame(width: 42, height: 42)
                    .background(Color.white)
                    .cornerRadius(10.0)
            }
            
            
        }
        .padding(.horizontal)
    }
}

struct tagLine: View {
    var body: some View {
        Text("Find The \nBest ")
            .font(.largeTitle)
            .foregroundColor(Color("Primary"))
        + Text("Furniture")
            .font(.largeTitle)
            .foregroundColor(Color("Primary"))
    }
}

struct searchView: View {
    @State private var search: String = ""
    var body: some View {
        HStack{
            HStack {
                Image("Search")
                    .padding(.trailing,8)
                TextField("Search Furniture", text: $search)
            }
            .padding()
            .background(Color.white)
            .cornerRadius(10.0)
            .padding(.horizontal)
            
            Button(action:{}) {
                Image(systemName: "barcode.viewfinder")
                    .font(.body)
                    .tint(.white)
                    .padding()
                    .background(Color("Primary"))
                    .cornerRadius(10.0)
            }
        }
        .padding(.horizontal)
    }
}

struct categoryView: View {
    let isActive: Bool
    let text: String
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            Text(text)
                .font(.title2)
                .fontWeight(.medium)
                .foregroundColor(isActive ? Color("Primary") : Color.black.opacity(0.6) )
            if(isActive){
                Color("Primary")
                    .frame(width: 15, height: 2)
                    .clipShape(Capsule())
            }
            
        }
    }
}

struct productCardView: View {
    let image:Image
    let size:CGFloat
    var body: some View {
        VStack{
            image
                .resizable()
                .frame(width: size, height: 200*(size/210))
                .cornerRadius(20.0)
            Text("Luxary Swedian Chair")
                .font(.title3)
                .fontWeight(.bold)
            HStack(spacing:2){
                ForEach(0..<5){ item in
                    Image("star")
                }
                Spacer()
                Text("₹12,999")
            }
        }
        .frame(width:size)
        .padding()
        .foregroundColor(.black)
        .background(Color.white)
        .cornerRadius(20.0)
      
    }
}

struct navButton: View {
    let image:Image
    let action: ()->Void
    var body: some View {
        Button(action:action) {
            image
                .font(.title2)
                .tint(.black)
                .frame(maxWidth: .infinity)
        }
    }
}


