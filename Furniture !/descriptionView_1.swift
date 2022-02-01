//
//  descriptionView_1.swift
//  Furniture !
//
//  Created by Shashwat . on 01/02/22.
//

import SwiftUI

struct descriptionView_1: View {
    var body: some View {
        VStack(alignment:.leading){
            Text("Luxary Swedia \n Chair")
                .font(.title)
                .fontWeight(.medium)
                .padding(.top)
            HStack(spacing:4){
                ForEach(0..<5){ _ in
                    Image("star")
                }
                Text("(4.9)")
                    .opacity(0.5)
                    .padding(.leading,8)
                Spacer()
            }
            Text("Description")
                .font(.title2)
                .fontWeight(.medium)
                .padding(.vertical,8)
            Text("Named after the town of Sedan in France where it was first used, the sedan chair consisted of a seat inside a cabin with a detachable roof.")
                .lineSpacing(8.0)
                .opacity(0.6)
            
            HStack(alignment:.top){
                VStack(alignment: .leading){
                    Text("Size")
                        .fontWeight(.semibold)
                        .padding(.bottom,4)
                    Text("Height: 120cm")
                        .opacity(0.6)
                    Text("Width: 80cm")
                        .opacity(0.6)
                    Text("Diameter: 72cm")
                        .opacity(0.6)
                }
                .frame(maxWidth: .infinity)
                VStack(alignment: .leading){
                    Text("Treatment")
                        .fontWeight(.semibold)
                        .padding(.bottom,4)
                    Text("Jati Wood, Canvas,\n Amazing Love")
                        .opacity(0.6)
                }
                .frame(maxWidth: .infinity)
            }
            .padding(.vertical)
            HStack(alignment:.center){
                VStack(alignment:.leading){
                    Text("Color")
                        .fontWeight(.semibold)
                    HStack{
                        ColorDotView(color: Color(.white))
                        ColorDotView(color: Color(.black))
                        ColorDotView(color: Color(.blue))
                    }
                    
                }
                Spacer()
                
                VStack(alignment:.leading){
                    Text("Capacity")
                        .fontWeight(.semibold)
                    HStack{
                        Button(action:{}){
                            Image(systemName: "minus")
                                .padding()
                        }
                        .frame(width:30,height:30)
                        .overlay(RoundedRectangle(cornerRadius: 50).stroke())
                        .foregroundColor(.black)
                        
                        Text("1")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .padding(.horizontal,8)
                        
                        Button(action:{}){
                            Image(systemName: "plus")
                                .padding()
                        }
                        .frame(width:30,height:30)
                        .background(.brown)
                        .clipShape(Circle())
                        .foregroundColor(.white)
                    }
                    .padding(.trailing)
                }
            }
           
        }
        .padding(.leading)
        .padding(.bottom)
        .background(Color("Bg"))
        .cornerRadius(40.0,corners: [.topLeft,.topRight])
        
    }
}

struct descriptionView_1_Previews: PreviewProvider {
    static var previews: some View {
        descriptionView_1()
    }
}
