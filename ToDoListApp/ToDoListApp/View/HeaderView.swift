//
//  HeaderView.swift
//  ToDoListApp
//
//  Created by Vishal Wagh on 05/01/24.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(Color.pink)
                .rotationEffect(Angle(degrees: 15))
            VStack {
                Text("To Do List")
                    .font(.system(size: 50))
                    .bold()
                Text("Get thing done")
                    .font(.system(size: 30))
            }
            .foregroundColor(.white)
        }
        .frame(width: UIScreen.main.bounds.width * 3 , height: 300)
        .offset(y: -100)
            
        
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
