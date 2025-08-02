//
//  Question.swift
//  PersonalQwiz
//
//  Created by Ivan Honcharov on 23.07.25.
//

struct Question {
    let title: String
    let type: ResponseType
    let answers: [Answer]
    
    static func getQuestions() -> [Question] {
        [
            Question(
                title: "Какую пищу вы предпочитаете?",
                type: .single,
                answers: [
                    Answer(title: "Стейк", animal: .dog),
                    Answer(title: "Рыба", animal: .cat),
                    Answer(title: "Марковь", animal: .rabbit),
                    Answer(title: "Кукуруза", animal: .turtle)
                ]
            ),
            Question(
                title: "Что вам нравиться больше?",
                type: .multiple,
                answers: [
                    Answer(title: "Плавать", animal: .dog),
                    Answer(title: "Спать", animal: .cat),
                    Answer(title: "Обниматься", animal: .rabbit),
                    Answer(title: "Есть", animal: .turtle)
                ]
            ),
            Question(
                title: "Любите ли вы поездки на машине?",
                type: .ranged,
                answers: [
                    Answer(title: "Ненавижу", animal: .cat),
                    Answer(title: "Нервничаю", animal: .rabbit),
                    Answer(title: "Незамечаю", animal: .turtle),
                    Answer(title: "Обожаю", animal: .dog)
                ]
            )
        ]
    }
}

enum ResponseType {
    case single
    case multiple
    case ranged
}
struct Answer {
    let title: String
    let animal: Animal
    
}
enum Animal: Character {
    case dog = "🐶"
    case cat = "🐱"
    case rabbit = "🐰"
    case turtle = "🐢"
    
    var definition: String {
        switch self {
        case .dog:
            "Вам нравиться быть с друзьями. Вы хороший друг, который не бросит в беде, и просто прикольный чел."
        case .cat:
            "Вы цените одиночество. Возможно немного замкнуты в себе, и любите гулять сами по себе."
        case .rabbit:
            "Вам нравиться быть всегда на шухере. Вы здоровы и полны энергии."
        case .turtle:
            "Вы никуда не торопитесь и своё уже увидели и достигли.'Идущий к реке' это про ваше состояние души."
        }
        
    }
}
