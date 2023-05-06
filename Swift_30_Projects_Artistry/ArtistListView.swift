//
//  ArtistListView.swift
//  Swift_30_Projects_Artistry
//
//  Created by yc on 2023/05/06.
//

import SwiftUI

struct ArtistListView: View {
    
    @State var artistList = Artist.list
    
    var body: some View {
        
        NavigationView {
            
            List($artistList, id: \.self) { artist in
                
                ZStack {
                    NavigationLink {
                        ArtistDetailView(artist: artist)
                    } label: {
                        EmptyView()
                    }
                    .opacity(0)
                    
                    ArtistListCell(artist: artist)
                }
                
                
            }
            .listStyle(.plain)
            
            .navigationTitle("Artistry")
            .navigationBarTitleDisplayMode(.inline)
        } // NavigationView
        
    }
}

struct ArtistListView_Previews: PreviewProvider {
    static var previews: some View {
        ArtistListView()
    }
}
