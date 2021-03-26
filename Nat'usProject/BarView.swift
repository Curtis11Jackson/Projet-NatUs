//
//  Graphique2.swift
//  Natus PK
//
//  Created by KASEMRATH on 12/03/2021.
//

import SwiftUI
struct BarView: View{

    var value: CGFloat
    var cornerRadius: CGFloat
    
    var body: some View {
        VStack {

            ZStack (alignment: .bottom) {
                RoundedRectangle(cornerRadius: cornerRadius)
                    .frame(width: 30, height: 200).foregroundColor(.black)
                RoundedRectangle(cornerRadius: cornerRadius)
                    .frame(width: 30, height: 100).foregroundColor(.green)
                
            }.padding(.bottom, 8)
        }
        
    }
}

struct BareView_Previews: PreviewProvider {
    static var previews: some View {
        BarView(value: 200, cornerRadius: 6)
    }
}
