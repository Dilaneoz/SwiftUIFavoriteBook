//
//  ContentView.swift
//  FavoriteBook
//
//  Created by Atil Samancioglu on 14.08.2019.
//  Copyright © 2019 Atil Samancioglu. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView{ // nası swiftte embedded in navigation ı seçiyoruz burada da NavigationView parantezine yazmak gerekiyor. bunu yapınca bütün her şeyi navigation içine alır
        
        List {
            
            ForEach(myFavorites) { favorite in // Section hiyerarşik bi düzen oluşturur. parantez açarsak header(başlık) ya da footer(altta başlık) koyma imkanı sağlar.
                Section(header: Text(favorite.title)) {
                    ForEach(favorite.elements) { element in // başlığın altında olucaklar
                        NavigationLink(destination: DetailsView(chosenFavoriteElement: element)) {
                           Text(element.name) // elemanlardan birine tıklanınca navigation olsun istiyoruz o yüzden buraya koyduk. destination hangi view ı göstericeğimizi sorar. sonra da NavigationLink içinde ne göstericeğimizi yazarız
                        }
                    }
                }
            } // NavigationLink in çalışması için bütün view ın navigationview içinde olması gerek
            }.navigationBarTitle(Text("Favorite Book")) 
    }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
