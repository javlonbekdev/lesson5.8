//
//  ContentView.swift
//  lesson5.8
//
//  Created by Javlonbek on 28/01/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack{
                        AddStory()
                        ItemStory()
                        ItemStory()
                        ItemStory()
                        ItemStory()
                    }
                }
                .frame(height: 100)
                ItemPost(img_url: "myPhoto1")
                ItemPost(img_url: "iphone")
            }
            .listStyle(.plain)
            .navigationBarItems(leading: Image(systemName: "camera").foregroundColor(.red), trailing: Image(systemName: "paperplane").foregroundColor(.red))
            .navigationBarTitle("Instagram", displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ItemStory: View {
    var body: some View {
        VStack{
            Image("myPhoto1").resizable()
                .frame(width: 70, height: 70, alignment: .center)
                .cornerRadius(35)
                .overlay(RoundedRectangle(cornerRadius: 35).stroke(.red, lineWidth: 2))
            Text("Javlonbek").font(.system(size: 13.5))
        }
        .padding()
    }
}

struct AddStory: View {
    var body: some View {
        VStack{
            ZStack(alignment: .bottomTrailing){
                Image("myPhoto1").resizable()
                    .frame(width: 70, height: 70, alignment: .center)
                    .cornerRadius(35)
                Image(systemName: "plus.circle.fill")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .background(.white)
                    .cornerRadius(12)
                    .foregroundColor(.green)
            }
            Text("Javlonbek").font(.system(size: 13.5))
        }
        .padding()
    }
}

struct ItemPost: View {
    var img_url = "iphone"
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            HStack{
                Image("myPhoto1")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .cornerRadius(25)
                Text("javlonbek")
                    .font(.system(size: 13.5))
                Button("follow"){
                    
                }
                .font(.system(size: 13.5, weight: .heavy))
                .foregroundColor(.red)
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "square.and.arrow.up")
                }
                
            }
            HStack(spacing: 2){
                Image(img_url)
                    .resizable()
                    .scaledToFit()
                    .padding(.leading, -20)
                Image(img_url)
                    .resizable()
                    .scaledToFit()
                    .padding(.trailing, -20)
            }
            HStack{
                Image(systemName: "suit.heart.fill")
                Image(systemName: "text.bubble.fill")
                Image(systemName: "arrowshape.turn.up.left.fill")
                Spacer()
                Image(systemName: "bookmark.fill")
            }
            Text("Liked by Ulug'bek and 143 others")
                .font(.system(size: 13))
            Text("Doniyorjon thanks share this post all members")
                .font(.system(size: 13))
                .foregroundColor(.black.opacity(0.7))
        }
    }
}
