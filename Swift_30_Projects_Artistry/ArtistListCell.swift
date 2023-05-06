//
//  ArtistListCell.swift
//  Swift_30_Projects_Artistry
//
//  Created by yc on 2023/05/06.
//

import SwiftUI

struct ArtistListCell: View {
    
    @Binding var artist: Artist
    
    var body: some View {
        HStack(alignment: .top, spacing: 16) {
            
            VStack {
                
                Image(artist.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: (UIScreen.main.bounds.width - 16 * 3) / 2)
                
                Text(artist.name)
                    .frame(width: (UIScreen.main.bounds.width - 16 * 3) / 2)
                    .background(Color.orange)
                    .foregroundColor(.white)
                    .font(.system(size: 20, weight: .semibold))
                
            } // VStack
            
            Text(artist.bio)
                .font(.system(size: 18))
                .foregroundColor(.gray)
            
        } // HStack
        
        .listRowInsets(
            EdgeInsets(
                top: 16,
                leading: 16,
                bottom: 16,
                trailing: 16
            )
        )
    }
}


struct ArtistListCell_Previews: PreviewProvider {
    static var previews: some View {
        ArtistListCell(artist: .constant(Artist.list.first!))
    }
}
