//
//  DataStore.swift
//  ContactList
//
//  Created by Aleksandr Mamlygo on 02.06.23.
//

import Foundation

class DataStore {
    static let shared = DataStore()
    
    let firstNames = [
        "Reziko",
        "Ramaz",
        "Tihana",
        "Zora",
        "Zoran",
        "Nazim",
        "Miloš",
        "Raül",
        "Drahoslava",
        "Milena"
    ]
    
    let lastNames = [
        "Tinatin",
        "Emili",
        "Dana",
        "Dušana",
        "Guðmundur",
        "Medea",
        "Lalita",
        "Jožica",
        "Tumanyan",
        "Ishkur"
    ]
    
    let phoneNumbers = [
        "+1 208-500-1122",
        "+1 229-531-3684",
        "+1 425-601-4041",
        "+1 505-646-5421",
        "+1 505-406-8945",
        "+1 505-964-6956",
        "+244 942 864 306",
        "+244 912 080 655",
        "+374 33 993265",
        "+267 32 126 626"
    ]
    
    let eMails = [
        "sonny36910@muvilo.net",
        "gprime96@email-temp.com",
        "brinzavlad@rexburgonbravo.com",
        "torgeo@hieu.in",
        "galaperodol@rawscored.com",
        "jules432@7kratom.com",
        "mooga@salst.engineer",
        "bladesofgrass@acidlsdshop.com",
        "hinn@goaaogle.site",
        "nik1234ola@dsrgarg.site"
    ]
    
    private init() {}
}
