//
//  GalleryView.swift
//  Landmarks
//
//  Created by Chenxi Liu on 2024/1/29.
//

import SwiftUI

struct GalleryView: View {
        
    var body: some View {
        
        NavigationStack {
            
            LazyVGrid {
                ForEach(allLandmarks) { currentLandmark in
                    
                    NavigationLink {
                        DetailView(item: currentLandmark)
                    } label: {
                        GalleryItemView(item: currentLandmark)
                    }
                    
                }
                .navigationTitle("Landmarks")
            }
        }
    }
}

#Preview {
    GalleryView()
}
