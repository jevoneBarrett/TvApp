//
//  ContentView.swift
//  TvApp
//
//  Created by Jevone Barrett on 8/8/21.
//

import SwiftUI
import SDWebImageSwiftUI

struct ShowsView: View {
    
    @ObservedObject var showViewModel = ShowViewModel()
    
    let Columns = [
        GridItem (.flexible(minimum: 100, maximum: 200), spacing: 16),
        GridItem (.flexible(minimum: 100, maximum: 200), spacing: 16),
        GridItem (.flexible(minimum: 100, maximum: 200), spacing: 16)
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid (columns: Columns, content: {
                    ForEach(showViewModel.shows) { show in
                        
                        NavigationLink(
                            destination: TvShowDetailView(show: show),
                            label: {
                                WebImage( url: show.image.medium)
                                    .resizable()
                                    .indicator(.activity)
                                    .aspectRatio(contentMode: .fit)
                                    .frame(height:150)
                                    .cornerRadius(8)
                    
                            })
                    }
                })
                .padding()
            }
            .navigationTitle("Tv Shows")
            .onAppear(perform:{
                showViewModel.FetchTvshows()
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ShowsView()
            .environmentObject(ShowViewModel())
        
    }
}
