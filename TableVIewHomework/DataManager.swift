//
//  DataManager.swift
//  TableVIewHomework
//
//  Created by Andrey Markov on 2020-09-10.
//  Copyright © 2020 Andrey Markov. All rights reserved.
//

class DataManager{
    
    static let shared = DataManager()
    
    private init() {}
    
    let names = [
        "Anton","Nikolay","Samuel","Alexandr","Roman","Jordan"
    ]
    let surnames = [
        "Miranchuk","Rasskazov","Gigout","Kokorin","Zobnin","Larsson"
    ]
    let phones = [
        "89154563418","89256578900","89169785432","89167777777","89346875488","89103546879"
    ]
    let emails = [
        "amiranchuk@mail.ru","rasskaz98@yandex.ru","samuregby@gmail.com","fartumastiauekokora@yandex.ru","zobaroman@mail.ru","larssonjr@gmail.com"
    ]
}
