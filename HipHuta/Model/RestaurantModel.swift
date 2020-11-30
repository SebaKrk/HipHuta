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
    
    let rest2 = RestaurantModel(name: "Kawiarnia Centrum", adress: "osiedle Centrum D1, 31-932 Kraków", img: UIImageView(image: #imageLiteral(resourceName: "KawiarniaCentrum")), description: "Plac Centralny powoli staje się gastronomicznym sercem Nowej Huty. I bardzo dobrze! Kawiarnia Centrum to najnowszy lokal działający w jego obrębie.\nStarsi mieszkańcy dzielnicy z pewnością pamiętają, gdzie mieścił się nowohucki „Empik” (mówimy tu o klubie książki i prasy, nie obecnej sieciówce). Dokładnie w tym samym miejscu, na os. Centrum D1 urzęduje obecnie Kawiarnia Centrum.\nMały, ale urokliwy neon „Kawiarnia” święcący zza szyby jest najlepszym zaproszeniem, aby wejść do środka. We wnętrzu jako pierwsze w oczy rzucają się podświetlana lada ze słodko-słonymi smakołykami oraz kolor pomarańczowy, na który to pomalowano większość ścian.")
    
    let rest3 = RestaurantModel(name: "Marchewka Bistro", adress: "al. Jana Pawła II 232, 31-913 Kraków", img: UIImageView(image: #imageLiteral(resourceName: "MarchewkaBistro")), description: "Na otwarcie Marchewka Bistro czekaliśmy bardzo długo. 13 czerwca lokal otworzył swoje podwoje dla wszystkich fanów ekologicznego i naprawdę lokalnego jedzenia. Oczywiście nie mogło nas tam zabraknąć.\nGdzie znajduje się Marchewka Bistro? Lokal usytuowany jest bardzo blisko Placu Centralnego, ale mimo to nie tak łatwo do niego trafić. Jest on częścią Nowohuckiego Centrum Kultury i to właśnie przechodząc przez nie, lub obchodząc je dookoła, traficie do tego przyjemnego miejsca.\nBistro otwarte jest (przynajmniej na razie) w godzinach 11:00 – 18:00. Trzeba mieć świadomość, że wpadać się tu będzie na pożywne obiady i lekkie eko-lunche, a nie na wieczorne piwo ze znajomymi. A co do tego, że do Marchewki wpadać warto nie mamy żadnych wątpliwości.")
    
    let rest4 = RestaurantModel(name: "Skarbnica Smaku", adress: "os. Centrum C1, 31-929 Kraków", img: UIImageView(image: #imageLiteral(resourceName: "SkarbnicaSmaku")), description: "Długie miesiące oczekiwania i zaglądania przez szybę wreszcie się skończyły. 20 września 2019 r. Skarbnica Smaku wreszcie otworzyła swoje podwoje. Jak prezentuje się restauracja w tak ważnym dla wielu Nowohucian miejscu?\nW 2015 r., kiedy to zaczęliśmy pisać dla was bloga Hip Huta, fantazjowaliśmy o tym, co może stać się z lokalem po księgarni Skarbnica na os. Centrum C1. Obawialiśmy się, że podzieli on los wielu innych kultowych miejsc, których powierzchnię zajmują obecnie sklepy z używaną odzieżą lub placówki banków.\nNie były to wyłącznie nasze zmartwienia, w końcu wspomnienia ze Skarbnicą miał właściwie każdy mieszkaniec Huty mający na karku przynajmniej dwadzieścia parę lat. Możemy na szczęście odetchnąć z ulgą. Restauracja, która powstała w tym miejscu to lokal robiący dobre wrażenie już na starcie!")
    
    let rest5 = RestaurantModel(name: "C-2 Południe Cafe", adress: "os. Centrum C1, 31-929 Kraków", img: UIImageView(image: #imageLiteral(resourceName: "C-2południeCafe")), description: "Jest w Nowej Hucie takie miejsce, w którym ciągle trwają lata 80. To C-2 Południe Cafe – maleńka, ale jednocześnie najbardziej stylowa kawiarnia w tej części Krakowa./nMieści się ona dosyć nietypowym miejscu, bo w Ośrodku Kultury im. Cypriana Kamila Norwida (tym samym co biblioteka i kino Sfinks). Nie jest do niej łatwo trafić, ale kiedy tylko przekroczycie jej próg, to „wspomnień czar” dosłownie uderzy was w twarz./nTutaj naprawdę można poczuć się jak przed trzydziestoma laty. PRL-owskie meble, zastawy, gazety, sprzęt audio marki Unitra (radiomagnetofon „Maja”!), plakaty, aparaty telefoniczne, a nawet suszarki do włosów. W C-2 Południe Cafe znajdziecie wszystko, łącznie z hełmem używanym niegdyś przez milicjantów.")
    
    return [rest1,rest2,rest3,rest4,rest5]
}
