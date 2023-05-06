//
//  ArtistDetailView.swift
//  Swift_30_Projects_Artistry
//
//  Created by yc on 2023/05/06.
//

import SwiftUI

struct ArtistDetailView: View {
    
    @Binding var artist: Artist
    
    var body: some View {
        List($artist.works, id: \.self) { work in
            ArtistDetailListCell(work: work)
                .listRowInsets(
                    EdgeInsets(
                        top: 16,
                        leading: 16,
                        bottom: 16,
                        trailing: 16
                    )
                )
        }
        .listStyle(.plain)
        
        .navigationTitle(artist.name)
    }
}


struct ArtistDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ArtistDetailView(artist: .constant(Artist.list[4]))
    }
}
