//
//  CommunityView.swift
//  BoolNaBangMBTI
//
//  Created by 임병구 on 2023/08/07.
//

import SwiftUI

struct CommunityListView: View {
    var body: some View {
        NavigationStack {
            // MBTI 선택창
            // 아직은 그냥 그림
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(0..<16) { cap in
                        Capsule()
                            .fill(Color.indigo)
                            .frame(width: 90, height: 40)
                    }
                }
            }
            Spacer()
            NavigationLink {
                CommunityDetailView()
            } label: {
                Text("음")
            }

        }
        .navigationTitle("커뮤니티")
        .toolbar {
            // 알림창 가는 버튼
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink {
                    CommunityNoticeView()
                } label: {
                    Image(systemName: "bell.and.waves.left.and.right.fill")
                }
            }
            // 검색 버튼
            ToolbarItem {
                NavigationLink {
                    CommunityNoticeView()
                } label: {
                    Image(systemName: "magnifyingglass")
                }
            }
        }
        
    }
}

struct CommunityListView_Previews: PreviewProvider {
    static var previews: some View {
        CommunityListView()
    }
}
