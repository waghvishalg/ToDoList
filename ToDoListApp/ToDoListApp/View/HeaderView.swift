//
//  HeaderView.swift
//  ToDoListApp
//
//  Created by Vishal Wagh on 05/01/24.
//

import SwiftUI

struct HeaderView: View {
    
    let title: String
    let SubTitle: String
    let angle: Double
    let backgroundColor: Color
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(backgroundColor)
                .rotationEffect(Angle(degrees: angle))
            VStack {
                Text(title)
                    .font(.system(size: 50))
                    .bold()
                Text(SubTitle)
                    .font(.system(size: 30))
            }
            .foregroundColor(.white)
        }
        .frame(width: UIScreen.main.bounds.width * 3 , height: 300)
        .offset(y: -150)
            
        
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title: "Title", SubTitle: "SubTitle", angle: 15, backgroundColor: .orange)
    }
}
