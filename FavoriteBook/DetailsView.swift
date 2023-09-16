//
//  DetailsView.swift
//  FavoriteBook
//
//  Created by Atil Samancioglu on 14.08.2019.
//  Copyright © 2019 Atil Samancioglu. All rights reserved.
//

import SwiftUI

struct DetailsView: View {
    
    var chosenFavoriteElement : FavoriteElements // FavoriteElements ı aktarmak istiyoruz. bunu yaptığımızda, DetailsView her çağırıldığında, bir chosenFavoriteElement verilmesini isteyecek bizden
    
    var body: some View {
        VStack{
            Image(chosenFavoriteElement.imagename)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Text(chosenFavoriteElement.name) // bunu yapınca hangi eleman aktarılırsa onun ismini gösterir
                .font(.largeTitle)
            .padding()
            
            Text(chosenFavoriteElement.description) // en alttaki açıklama kısmını oluşturuyoruz
        }
    }
}

#if DEBUG
struct DetailsView_Previews: PreviewProvider { // burası sağdaki preview ın nasıl çalışcağını belirleyen fonksiyon. preview da ne gösterileceğini belirliyor
    static var previews: some View {
        DetailsView(chosenFavoriteElement: thedarkknight) // DetailsView burada çağırıldığı için chosenFavoriteElement ı bana vermen gerek diyor
    }
}
#endif
