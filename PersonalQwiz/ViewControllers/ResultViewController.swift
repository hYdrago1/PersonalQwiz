//
//  ResultViewController.swift
//  PersonalQwiz
//
//  Created by Ivan Honcharov on 23.07.25.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet var typeLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    
    var answerChosen: [Answer] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let answer = mostFrequentAnimal(from: answerChosen)
        typeLabel.text = "Вы - \(answer.rawValue)!"
        descriptionLabel.text = answer.definition
        navigationItem.hidesBackButton = true
    }
    
    
    
    func mostFrequentAnimal(from answers: [Answer]) -> Animal {
        var frequency: [Animal: Int] = [:]
        
        for answer in answers {
            let currentAnimal = answer.animal
            
            if let currentCount = frequency[currentAnimal] {
                frequency[currentAnimal] = currentCount + 1
            } else {
                frequency[currentAnimal] = 1
            }
        }
        
        let mostFrequency = frequency.max { a, b in  a.value < b.value }
        print(mostFrequency!)
        return mostFrequency!.key
        
    }
    
    @IBAction func doneButtonAction(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
    
    deinit {
        print("\(type(of: self)) has been deallocated")
    }
}
