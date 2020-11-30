//
//  RestaurantModel.swift
//  HipHuta
//
//  Created by Sebastian Sciuba on 30/11/2020.
//


import UIKit

struct RestaurantModel {
    var name = ""
    var adress = ""
    var img = UIImageView()
    var description = ""
}

func getRestaurant () -> [RestaurantModel]{
    let rest1 = RestaurantModel(name: "Cafe Nowa Księgarnia", adress: "osiedle Zgody 7, 31-949 Kraków", img: UIImageView(image: #imageLiteral(resourceName: "CafeNowaKsięgarnia")), description: "W chwili, kiedy piszemy te słowa Cafe Nowa Księgarnia ma już ponad rok. Przez ostatnie miesiące odwiedziliśmy to miejsce kilka razy. Za każdym razem miejsce to wyglądało odrobinę inaczej. Postanowiliśmy, że wreszcie nadszedł czas na naszą recenzje! \nDobra książka i pyszna kawa. Czy może być lepsze połączenie? Z tego jakże trafnego założenia wyszli założyciele Nowej na os. Zgody 7, którzy postanowili udowodnić, że w Hucie wciąż jest miejsce na księgarnię z prawdziwego zdarzenia, kolejną świetną kawiarnię i piękny neon.\nIch lokal to w efekcie prawdziwe, bezkompromisowe „2 w 1”, a w zasadzie to „3 w 1”, bo środku mieści się jeszcze mały, ale prężnie działający punkt informacji turystycznej.")
    
    
    return [rest1]
}
