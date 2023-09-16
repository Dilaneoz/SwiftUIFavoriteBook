//
//  FavoriteModel.swift
//  FavoriteBook
//
//  Created by Atil Samancioglu on 14.08.2019.
//  Copyright © 2019 Atil Samancioglu. All rights reserved.
//

import Foundation
import SwiftUI

struct FavoriteModel : Identifiable { // Identifiable da listenin içine id yi manuel olarak belirtmemiz gerekiyor. Identifiable ı böyle yazdığımızda ve sonra gidip listede bunu verdiğimizde bize id sormayacak çünkü anlayacak
    var id = UUID() // buraya örneğin int yazsak her seferinde manuel olarak id vermemiz gerekirdi. UUID() kullanınca otomatik unique id atar her birine
    var title : String // elemanların bir başlığı olucak
    var elements : [FavoriteElements] // title ların altında elemanlar olucak(görseller açıklamalar)
    
}

struct FavoriteElements : Identifiable {
    var id = UUID()
    var name : String
    var imagename : String
    var description : String
}

//Bands

let metallica = FavoriteElements(name: "Metallica", imagename: "metallica", description: "No 1 Music Band")
let megadeth = FavoriteElements(name: "Megadeth", imagename: "megadeth", description: "No 2 Music Band")
let ironmaiden = FavoriteElements(name: "Iron Maiden", imagename: "ironmaiden", description: "No 3 Music Band")

let favoriteBands = FavoriteModel(title: "Favorite Bands", elements: [metallica,megadeth,ironmaiden])

//Movies

let pulpfiction = FavoriteElements(name: "Pulp Fiction", imagename: "pulpfiction", description: "No 1 Movie")
let thedarkknight = FavoriteElements(name: "The Dark Knight", imagename: "thedarkknight", description: "No 2 Movie")
let killbill = FavoriteElements(name: "Kill Bill", imagename: "killbill", description: "No 3 Movie")

let favoriteMovies = FavoriteModel(title: "Favorite Movies", elements: [pulpfiction,thedarkknight,killbill])

let myFavorites = [favoriteBands, favoriteMovies]


