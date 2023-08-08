//
//  HomeView.swift
//  BoolNaBangMBTI
//
//  Created by 임병구 on 2023/08/07.
//

// 진영
import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack{
            NavigationLink {
                goongHabListView()
            } label: {
                Text("연애궁합")
                    .frame(width: 250, height: 50)
            } .padding()
            NavigationLink {
                goongHabListView()
            } label: {
                Text("프로젝트 궁합")
                    .frame(width: 250, height: 50)
            }
            .padding()
            NavigationLink {
                HowToFriendView()
            } label: {
                Text("MBTI별 대처법 ▶︎")
            }.tint(.white)
            .font(.title2 .bold())
            .foregroundColor(.black)
        }
        .font(.largeTitle)
        .tint(.indigo)
        .buttonStyle(.borderedProminent)
        .buttonBorderShape(.roundedRectangle(radius: 20))
        .shadow(color: .gray, radius: 2, x: 0,y: 3)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
