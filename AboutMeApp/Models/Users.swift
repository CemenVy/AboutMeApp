//
//  Users.swift
//  AboutMeApp
//
//  Created by Семен Выдрин on 08.08.2023.
//

import Foundation
import UIKit

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            login: "Cemen",
            password: "12345",
            person: Person(
                name: "Семен",
                surname: "Выдрин",
                age: 26,
                nationality: "Русский",
                resume: """
                Меня зовут Выдрин Семен, мне 26 лет. Всю свою жизнь я думал что я прирожденный гуманитарий,
                но в 2023 году я решил кардинально поменять сферу деятельности и начал осваивать новую
                профессию IOS-Developer. Забавный факт что я купил первый раз курс у SwiftBook еще в апреле, но
                подумал что это просто эмоциональный порыв и вернул деньги, но уже в июне я вновь вернулся к вам
                и вот уже на втором модуле.
                """,
                avatar: UIImage(named: "avatarUser")
            )
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let age: Int
    let nationality: String
    let resume: String
    let avatar: UIImage?
    
    var fullname: String {
        return "\(name) + \(surname)"
    }
}

