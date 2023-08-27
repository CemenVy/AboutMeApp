//
//  Users.swift
//  AboutMeApp
//
//  Created by Семен Выдрин on 08.08.2023.
//

import Foundation

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            login: "Cemen",
            password: "12345",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let age: Int
    let nationality: String
    let resume: String
    let photo: String
    
    var fullName: String {
        return "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(
            name: "Семен",
            surname: "Выдрин",
            age: 26,
            nationality: "Русский",
            resume: "Всю свою жизнь я считал себя гуманитарием и даже не задумывался о мире IT. Моя деятельность была связана с продажами, организацией мероприятий для ведущих мировых брендов. Однако в 2023 году я осознал, что желаю перемен и решил сменить направление.В настоящее время я погружен в изучение новой профессии – iOS-разработчика. Этот выбор необычен для меня, учитывая мои предыдущие интересы и занятия. Перейти на путь разработки приложений для iOS стало для меня решением, принятым с большим энтузиазмом. Интересно, что мой первый опыт обучения начался в апреле, когда я приобрел курс от SwiftBook. Однако, мои сомнения переиграли меня, и я решил вернуть деньги за курс. Тем не менее, уже в июне я понял, что это истинное стремление, и снова обратился к обучению. Сейчас я нахожусь на втором модуле, и это увлекательное путешествие продолжается.",
            photo: "Cemen"
        )
    }
}

