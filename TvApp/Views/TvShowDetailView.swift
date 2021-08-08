//
//  TvShowDetailView.swift
//  TvApp
//
//  Created by Jevone Barrett on 8/8/21.
//

import SwiftUI
import SDWebImageSwiftUI

struct TvShowDetailView: View {
    var show: TVShow
    var body: some View {
        ScrollView {
            WebImage(url: show.image.original)
            .resizable()
            .indicator(.activity)
            .aspectRatio(contentMode: .fit)
            Text(show.name)
        }
    }
}

//struct TvShowDetailView_Previews: PreviewProvider {
//    static var previews: some View {
////        TvShowDetailView()
//    }
//}
