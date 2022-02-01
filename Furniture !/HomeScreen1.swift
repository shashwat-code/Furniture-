//
//  HomeScreen1.swift
//  Furniture !
//
//  Created by Shashwat . on 01/02/22.
//

import SwiftUI

struct HomeScreen1: View {
    @State private var selectedIndex: Int = 0
    private let categories = ["All","Chair","Sofa","Lamp","Kitchen","Table"]
    var body: some View {
        ZStack{
            Color("Bg")
                .edgesIgnoringSafeArea(.all)
            ScrollView {
                VStack(alignment: .leading){
                    navigationBar()
                    tagLine()
                        .padding()
                    searchView()
                    ScrollView(.horizontal,showsIndicators: false) {
                        HStack{
                            ForEach(0..<categories.count) { item in
                                categoryView(isActive: item==selectedIndex, text: categories[item])
                                    .onTapGesture {
                                        selectedIndex=item
                                    }
                            }
                            .padding()
                        }
                        .padding()
                    }
                    
                    Text("Popular")
                        .font(.title)
                        .padding(.horizontal)
                    
                    
                    ScrollView(.horizontal,showsIndicators: false) {
                        HStack {
                            ForEach(0 ..< 4) { item in
                                NavigationLink(destination: DescriptionView(),label:{
                                    productCardView(image: Image("chair_\(item+1)"), size: 210)
                                })
                                    .navigationBarHidden(true)
                            }
                            .padding(.trailing)
                        }
                        .padding(.leading)
                    }
                    
                    Text("Best")
                        .font(.title)
                        .padding(.horizontal)
                    
                    
                    ScrollView(.horizontal,showsIndicators: false) {
                        HStack {
                            ForEach(0 ..< 4) { item in
                                productCardView(image: Image("chair_\(4-item)"), size: 180)
                            }
                            .padding(.trailing)
                        }
                        .padding(.leading)
                    }
                    
                }
            }
            
            HStack{
                navButton(image: Image(systemName: "house")){}
                navButton(image: Image(systemName: "heart")){}
                navButton(image: Image(systemName: "cart")){}
                navButton(image: Image(systemName: "person")){}
            }
            .padding()
            .background(Color.white)
            .clipShape(Capsule())
            .padding()
            .shadow(color: .black, radius: 10, x: 10, y: 10)
            .frame(maxHeight:.infinity, alignment: .bottom)
        }
    }
}


struct HomeScreen1_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen1()
    }
}
