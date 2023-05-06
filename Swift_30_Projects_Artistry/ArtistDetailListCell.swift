//
//  ArtistDetailListCell.swift
//  Swift_30_Projects_Artistry
//
//  Created by yc on 2023/05/06.
//

import SwiftUI

struct ArtistDetailListCell: View {
    
    @Binding var work: Artist.Work
    
    @State var isSelected: Bool = false
    
    var body: some View {
        VStack {
        
            Image(work.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: UIScreen.main.bounds.width - 32)
                .frame(maxHeight: 300)
            
            Text(work.title)
                .font(.system(size: 18, weight: .semibold))
                .frame(width: UIScreen.main.bounds.width - 32)
                .background(.gray.opacity(0.6))
            
            Spacer()
                .frame(height: 16)
            
            Button {
                isSelected.toggle()
            } label: {
                
                if !isSelected {
                    Text("Select For More Info >")
                        .font(.system(size: 16))
                        .foregroundColor(.secondary)
                } else {
                    Text(work.info)
                        .font(.system(size: 16))
                        .foregroundColor(.secondary)
                }
                
            }
            .animation(.interactiveSpring(), value: isSelected)
        }
    }
}


struct ArtistDetailListCell_Previews: PreviewProvider {
    static var previews: some View {
        ArtistDetailListCell(work: .constant(Artist.list.first!.works.first!))
    }
}
