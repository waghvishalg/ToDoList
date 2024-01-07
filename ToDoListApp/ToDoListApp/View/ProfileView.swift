//
//  ProfileView.swift
//  ToDoListApp
//
//  Created by Vishal Wagh on 04/01/24.
//

import SwiftUI

struct ProfileView: View {
    
    @StateObject var viewModel = ProfileViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                if let user = viewModel.user {
                    profileView(user: user)
                } else {
                    Text("Loading user details...")
                }
            }
            .navigationTitle("Profile")
        }
        .onAppear {
            viewModel.fetchUser()
        }
    }
    
    @ViewBuilder
    func profileView(user: User) -> some View {
        // Avtar
        Image(systemName: "person.crop.circle")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 140, height: 140)
            .foregroundColor(.blue)
            .padding()
        
        // Info: name, email and member since
        VStack(alignment: .leading, spacing: 20){
            viewOfNameValue(key: "Name",
                            value: user.name)
            viewOfNameValue(key: "Email",
                            value: user.email)
            viewOfNameValue(key: "Member",
                            value: "\(Date(timeIntervalSince1970: user.joined).formatted(date: .abbreviated, time: .shortened))")
        }
        // Sign out
        Button("Sign Out") {
            viewModel.logOut()
        }
        .tint(.red)
        .padding()
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

struct viewOfNameValue: View {
    @State var key: String = ""
    @State var value: String = ""
    
    var body: some View {
        HStack {
            Text("\(key):")
                .bold()
            Text(value)
        }
    }
}
