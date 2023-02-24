//
//  InfoPanelView.swift
//  PinchApp(Gestures)
//
//  Created by Mehmet Ergün on 2023-02-24.
//

import SwiftUI

struct InfoPanelView: View {
    
    var scale: CGFloat
    var offSet: CGSize
    
    @State private var isInfoPanelVisible: Bool = false
    
    var body: some View {
        HStack {
            
            //MARK: - HOTSPOT
            
            Image(systemName: "circle.circle")
                .symbolRenderingMode(.hierarchical)
                .resizable()
                .frame(width: 30, height: 30)
                .onLongPressGesture(minimumDuration: 0.5, perform: {
                    isInfoPanelVisible.toggle()
                })
            
            Spacer()
            
            //MARK: - INFO PANEL
            
            HStack(spacing: 2) {
                Image(systemName: "arrow.up.left.and.arrow.down.right")
                Text("\(scale)")
                
                Spacer()
                
                Image(systemName: "arrow.left.and.right")
                Text("\(offSet.width)")
                
                Spacer()
                
                Image(systemName: "arrow.up.and.down")
                Text("\(offSet.height)")
                
                Spacer()
                
            }
            .font(.footnote)
            .padding(8)
            .background(.ultraThinMaterial)
            .cornerRadius(10)
            .frame(maxWidth: 420)
            .opacity(isInfoPanelVisible ? 1 : 0)
            
            Spacer()
            
        }
    }
}

struct InfoPanelView_Previews: PreviewProvider {
    static var previews: some View {
        InfoPanelView(scale: 1, offSet: .zero)
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
