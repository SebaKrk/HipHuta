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
    var img = UIImage()
    var imgName = ""
    var description = ""
    var moreInfo = ""
    var img2 = UIImage()
}
struct Images {
    static let rest1image = UIImage(named: "CafeNowaKsięgarnia")!
    static let rest2image = UIImage(named: "KawiarniaCentrum")!
    static let rest3image = UIImage(named: "MarchewkaBistro")!
    static let rest4image = UIImage(named: "SkarbnicaSmaku")!
    static let rest5image = UIImage(named: "C-2południeCafe")!
    
    static let rest1image2 = UIImage(named: "CafeNowaKsięgarnia2")!
    static let rest2image2 = UIImage(named: "KawiarniaCentrum2")!
    static let rest3image2 = UIImage(named: "MarchewkaBistro2")!
    static let rest4image2 = UIImage(named: "SkarbnicaSmaku2")!
    static let rest5image2 = UIImage(named: "C-2południeCafe2")!
}


func getRestaurant () -> [RestaurantModel]{
    let rest1 = RestaurantModel(name: "Cafe Nowa Księgarnia", adress: "osiedle Zgody 7, 31-949 Kraków", img: Images.rest1image, imgName: "CafeNowaKsięgarnia", description: "Dobra książka i pyszna kawa. Czy może być lepsze połączenie? Z tego jakże trafnego założenia wyszli założyciele Nowej na os. Zgody 7, którzy postanowili udowodnić, że w Hucie wciąż jest miejsce na księgarnię z prawdziwego zdarzenia, kolejną świetną kawiarnię i piękny neon.", moreInfo: "https://hiphuta.com/2019/12/19/cafe-nowa-ksiegarnia-na-kawe-i-po-trafiony-prezent/", img2: Images.rest1image2)
    
    let rest2 = RestaurantModel(name: "Kawiarnia Centrum", adress: "osiedle Centrum D1, 31-932 Kraków", img: Images.rest2image,imgName: "KawiarniaCentrum", description: "Starsi mieszkańcy dzielnicy z pewnością pamiętają, gdzie mieścił się nowohucki „Empik”. Dokładnie w tym samym miejscu, na os. Centrum D1 urzęduje obecnie Kawiarnia Centrum.\nCo znajduje się w tutejszym menu? Słodkości to pyszna robota cukierni Adamek, a kanapki, tosty i smoothies powstają na miejscu. Do tego kilka rodzajów kawy i herbaty oraz zimne napoje.",moreInfo: "https://hiphuta.com/2017/05/15/kawiarnia-centrum-kawa-w-dawnym-empiku/",img2:Images.rest2image2 )
    
    let rest3 = RestaurantModel(name: "Marchewka Bistro", adress: "al. Jana Pawła II 232, 31-913 Kraków", img: Images.rest3image,imgName: "MarchewkaBistro", description: "Na otwarcie Marchewka Bistro czekaliśmy bardzo długo. 13 czerwca lokal otworzył swoje podwoje dla wszystkich fanów ekologicznego i naprawdę lokalnego jedzenia. Oczywiście nie mogło nas tam zabraknąć.\nGdzie znajduje się Marchewka Bistro? Lokal usytuowany jest bardzo blisko Placu Centralnego, ale mimo to nie tak łatwo do niego trafić. Jest on częścią Nowohuckiego Centrum Kultury i to właśnie przechodząc przez nie, lub obchodząc je dookoła, traficie do tego przyjemnego miejsca.\nBistro otwarte jest (przynajmniej na razie) w godzinach 11:00 – 18:00. Trzeba mieć świadomość, że wpadać się tu będzie na pożywne obiady i lekkie eko-lunche, a nie na wieczorne piwo ze znajomymi. A co do tego, że do Marchewki wpadać warto nie mamy żadnych wątpliwości.", moreInfo: "https://hiphuta.wordpress.com/2015/06/16/marchewka-bistro-najbardziej-eko-lokal-w-nh/",img2: Images.rest3image2)
    
    let rest4 = RestaurantModel(name: "Skarbnica Smaku", adress: "os. Centrum C1, 31-929 Kraków", img: Images.rest4image,imgName: "SkarbnicaSmaku", description: "Długie miesiące oczekiwania i zaglądania przez szybę wreszcie się skończyły. 20 września 2019 r. Skarbnica Smaku wreszcie otworzyła swoje podwoje. Jak prezentuje się restauracja w tak ważnym dla wielu Nowohucian miejscu?\nW 2015 r., kiedy to zaczęliśmy pisać dla was bloga Hip Huta, fantazjowaliśmy o tym, co może stać się z lokalem po księgarni Skarbnica na os. Centrum C1. Obawialiśmy się, że podzieli on los wielu innych kultowych miejsc, których powierzchnię zajmują obecnie sklepy z używaną odzieżą lub placówki banków.\nNie były to wyłącznie nasze zmartwienia, w końcu wspomnienia ze Skarbnicą miał właściwie każdy mieszkaniec Huty mający na karku przynajmniej dwadzieścia parę lat. Możemy na szczęście odetchnąć z ulgą. Restauracja, która powstała w tym miejscu to lokal robiący dobre wrażenie już na starcie!", moreInfo: "https://hiphuta.com/2019/09/21/skarbnica-smaku-warto-bylo-czekac/",img2: Images.rest4image2)
    
    let rest5 = RestaurantModel(name: "C-2 Południe Cafe", adress: "os. Centrum C1, 31-929 Kraków", img:Images.rest5image,imgName: "C-2południeCafe", description: "Ogromnie cieszymy się, że przy samym Placu Centralnym powstała restauracja z prawdziwego zdarzenia!\nLokal  postawił na kuchnię polską w wydaniu nawiązującym do czasów rozkwitu nowej Huty z kilkoma zagranicznymi akcentami.\nDania przypadły nam do gustu zarówno smakiem, jak i sposobem podania. Porcje zapełniają firmowe talerze z logotypem restauracji i są przygotowane ze świeżych składników.",moreInfo:  "https://hiphuta.wordpress.com/2015/03/17/c-2-poludnie-cafe-nowohucki-wehikul-czasu/",img2: Images.rest5image2)
    
    return [rest1,rest2,rest3,rest4,rest5]
}
