//
//  DescriptionView.swift
//  Furniture !
//
//  Created by Shashwat . on 31/01/22.
//

import SwiftUI

struct DescriptionView: View {
    var body: some View {
        VStack {
            ZStack{
                Color("Bg")
                    .edgesIgnoringSafeArea(.all)
                ScrollView {
                    Image("chair_1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        
                    descriptionView_1()
                        .offset(y:-85)
                }
                .edgesIgnoringSafeArea(.top)
                HStack{
                    Text("₹12,999")
                        .font(.title)
                        .foregroundColor(.white)
                    Spacer()
                    Button(action: {}) {
                        Text("Add to Cart")
                            .padding()
                            .padding(.horizontal)
                            .background(Color.white)
                            .cornerRadius(10.0)
                            .foregroundColor(Color("Primary"))
                    }
                }
                .padding()
                .background(Color("Primary"))
                .cornerRadius(50,corners: .topLeft)
                .frame(maxHeight: .infinity, alignment: .bottom)
            }
            .edgesIgnoringSafeArea(.bottom)
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: Image(systemName: "chevron.backward")
                                    .padding()
                                    .background(Color.white)
                                    .cornerRadius(8.0),
                                trailing: Image("threeDot")
                                    .padding())
           
        }
    }
}

struct DescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionView()
    }
}
struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}



struct ColorDotView: View {
    let color:Color
    var body: some View {
            color
                .frame(width: 24, height: 24)
                .clipShape(Circle())
        
    }
}
