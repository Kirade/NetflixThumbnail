//
//  HomeView.swift
//  NetflixThumbnail
//
//  Created by 허재영 on 2024.12.10.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView {
            HStack {
                Image("logo")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .padding()
                Spacer()
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .padding()
            }
            
            AsyncImage(url: URL(string: "https://ios-poster-json.s3.ap-northeast-2.amazonaws.com/posters/0BigImagePoster/bigPoster.png")) { image in
                image
                    .resizable()
                    .cornerRadius(10)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 525)
            } placeholder: {
                RoundedRectangle(cornerRadius: 10)
                    .fill(.gray)
                    .frame(width: 300, height: 300)
                    .opacity(0.4)
                    .overlay(
                        ProgressView()
                            .tint(.white)
                    )
            }
            .overlay(alignment: .bottom) {
                HStack {
                    Button {
                       print("재생 버튼 클릭됨")
                    } label: {
                        Image(systemName: "play.fill")
                    }
                    .buttonStyle(.bordered)
                    Button {
                       print("인포 버튼 클릭됨")
                    } label: {
                        Image(systemName: "info.circle.fill")
                    }
                    .buttonStyle(.bordered)
                }
                .padding()
            }
            
        }
        .background(.black)
        .foregroundStyle(.white)
    }
}

#Preview {
    HomeView()
}
