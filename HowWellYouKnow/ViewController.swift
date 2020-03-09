//
//  ViewController.swift
//  HowWellYouKnow
//
//  Created by Yosua Marchel on 03/03/20.
//  Copyright © 2020 Yosua Marchel. All rights reserved.
//
/* image source:
 Character: https://www.freepik.com/free-photos-vectors/people
 Chat bubble : https://www.freepik.com/free-photos-vectors/hand
 Result and refresh button : https://www.freepik.com/free-photos-vectors/logo
 */

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var profilePic: UIImageView!
    @IBOutlet weak var question1Buble: UIView!
    @IBOutlet weak var question2Buble: UIView!
    @IBOutlet weak var question3Buble: UIView!
    @IBOutlet weak var question4Buble: UIView!
    @IBOutlet weak var question5Buble: UIView!
    @IBOutlet weak var buttonTrue1: UIButton!
    @IBOutlet weak var buttonFalse1: UIButton!
    @IBOutlet weak var buttonTrue2: UIButton!
    @IBOutlet weak var buttonFalse2: UIButton!
    @IBOutlet weak var buttonTrue3: UIButton!
    @IBOutlet weak var buttonFalse3: UIButton!
    @IBOutlet weak var buttonTrue4: UIButton!
    @IBOutlet weak var buttonFalse4: UIButton!
    @IBOutlet weak var buttonTrue5: UIButton!
    @IBOutlet weak var buttonFalse5: UIButton!
    @IBOutlet weak var buttonRefresh: UIButton!
    @IBOutlet weak var buttonScore: UIButton!
    @IBOutlet weak var imageBoy: UIImageView!
    @IBOutlet weak var imageTextBuble: UIImageView!
    @IBOutlet weak var text100: UILabel!
    @IBOutlet weak var textGratz: UILabel!
    @IBOutlet weak var textNoAswer: UILabel!
    @IBOutlet weak var textPlay: UILabel!
    @IBOutlet weak var imagePlayBuble: UIImageView!
    @IBOutlet weak var textScore: UILabel!
    @IBOutlet weak var textName: UILabel!
    @IBOutlet weak var textNowYouKnow: UILabel!
    
    //variables that used
    var randomNumber = Int.random(in: 0...11)
    var score = 0
    var temp = 0
    
    //database of the name and answer with array:
    var allName = ["Fauzan","James","Nabila","Ajeng","Nixi","Yosua","Grace","Aga","Fadhil","Alldo","Anisa","Dimas"]
    var allAnswer = [[true,true,true,false,false],[true,true,true,true,false],[true,false,false,true,false],[true,false,true,true,true],[true,false,false,true,false],[true,false,false,true,false],[true,false,false,true,true],[true,false,true,true,false],[true,true,true,false,false],[false,true,true,true,false],[true,true,false,true,false],[false,true,false,true,false]]
    var allPic = [#imageLiteral(resourceName: "picFauzan"),#imageLiteral(resourceName: "picJames"),#imageLiteral(resourceName: "picNabila"),#imageLiteral(resourceName: "picAjeng"),#imageLiteral(resourceName: "picNixi"),#imageLiteral(resourceName: "picYosua"),#imageLiteral(resourceName: "picGrace"),#imageLiteral(resourceName: "picAga"),#imageLiteral(resourceName: "picFadhil"),#imageLiteral(resourceName: "picAlldo"),#imageLiteral(resourceName: "picAnisa"),#imageLiteral(resourceName: "picDimas")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //setting the bubble and picture to rounded
        profilePic.layer.cornerRadius = profilePic.frame.size.width / 2
        question1Buble.layer.cornerRadius = question1Buble.frame.size.width / 20
        question2Buble.layer.cornerRadius = question1Buble.frame.size.width / 20
        question3Buble.layer.cornerRadius = question1Buble.frame.size.width / 20
        question4Buble.layer.cornerRadius = question1Buble.frame.size.width / 20
        question5Buble.layer.cornerRadius = question1Buble.frame.size.width / 20
        buttonRefresh.layer.cornerRadius = buttonRefresh.frame.size.width / 10
        buttonScore.layer.cornerRadius = buttonScore.frame.size.width / 10
        
        //random change the picture when change person button pressed
        profilePic.image = allPic[randomNumber]
//        if randomNumber == 0{
//            profilePic.image = #imageLiteral(resourceName: "picFauzan")
//        }else if randomNumber == 1{
//            profilePic.image = #imageLiteral(resourceName: "picJames")
//        }else if randomNumber == 2{
//            profilePic.image = #imageLiteral(resourceName: "picNabila")
//        }else if randomNumber == 3{
//            profilePic.image = #imageLiteral(resourceName: "picAjeng")
//        }else if randomNumber == 4{
//            profilePic.image = #imageLiteral(resourceName: "picNixi")
//        }else if randomNumber == 5{
//            profilePic.image = #imageLiteral(resourceName: "picYosua")
//        }else if randomNumber == 6{
//            profilePic.image = #imageLiteral(resourceName: "picGrace")
//        }else if randomNumber == 7{
//            profilePic.image = #imageLiteral(resourceName: "picAga")
//        }else if randomNumber == 8{
//            profilePic.image = #imageLiteral(resourceName: "picFadhil")
//        }else if randomNumber == 9{
//            profilePic.image = #imageLiteral(resourceName: "picAlldo")
//        }else if randomNumber == 10{
//            profilePic.image = #imageLiteral(resourceName: "picAnisa")
//        }else{
//            profilePic.image = #imageLiteral(resourceName: "picDimas")
//        }
    }
    
    //refresh button func
    @IBAction func refreshClick(_ sender: UIButton) {
        randomNumber = Int.random(in: 0...11)
        if randomNumber == temp && temp == 11{
            randomNumber -= 1
        }else if randomNumber == temp{
            randomNumber += 1
        }else{
            temp = randomNumber
        }
        self.viewDidLoad()
        
        //reset the buttons
        buttonTrue1.isHighlighted = true
        buttonFalse1.isHighlighted = true
        buttonTrue2.isHighlighted = true
        buttonFalse2.isHighlighted = true
        buttonTrue3.isHighlighted = true
        buttonFalse3.isHighlighted = true
        buttonTrue4.isHighlighted = true
        buttonFalse4.isHighlighted = true
        buttonTrue5.isHighlighted = true
        buttonFalse5.isHighlighted = true
        
        //setting text and buble hidden
        imageTextBuble.isHidden = true
        imagePlayBuble.isHidden = false
        text100.isHidden = true
        textGratz.isHidden = true
        textNoAswer.isHidden = true
        textPlay.isHidden = false
        textScore.isHidden = true
        textNowYouKnow.isHidden = true
        textName.isHidden = true
    }
    
    //answer button func
    @IBAction func buttonTruePressed(_ sender: UIButton) {
        switch sender {
        case buttonTrue1:
            buttonFalse1.isHighlighted = true
        case buttonFalse1:
            buttonTrue1.isHighlighted = true
        case buttonTrue2:
            buttonFalse2.isHighlighted = true
        case buttonFalse2:
            buttonTrue2.isHighlighted = true
        case buttonTrue3:
            buttonFalse3.isHighlighted = true
        case buttonFalse3:
            buttonTrue3.isHighlighted = true
        case buttonTrue4:
            buttonFalse4.isHighlighted = true
        case buttonFalse4:
            buttonTrue4.isHighlighted = true
        case buttonTrue5:
            buttonFalse5.isHighlighted = true
        case buttonFalse5:
            buttonTrue5.isHighlighted = true
        default:
            print("unknown")
        }
    }

    //score button func
    @IBAction func resultButton(_ sender: Any) {
        imageTextBuble.isHidden = false
        imagePlayBuble.isHidden = true
        textPlay.isHidden = true
        
        //checking if all the answer is aswered
        if buttonTrue1.isHighlighted == buttonFalse1.isHighlighted{
            textNoAswer.isHidden = false
            showAlertAnswer()
        }else if buttonTrue2.isHighlighted == buttonFalse2.isHighlighted{
            textNoAswer.isHidden = false
            showAlertAnswer()
        }else if buttonTrue3.isHighlighted == buttonFalse3.isHighlighted{
            textNoAswer.isHidden = false
            showAlertAnswer()
        }else if buttonTrue4.isHighlighted == buttonFalse4.isHighlighted{
            textNoAswer.isHidden = false
            showAlertAnswer()
        }else if buttonTrue5.isHighlighted == buttonFalse5.isHighlighted{
            textNoAswer.isHidden = false
            showAlertAnswer()
        }else{
            if buttonTrue1.isHighlighted != allAnswer[randomNumber][0]{
                score += 20
            }
            if buttonTrue2.isHighlighted != allAnswer[randomNumber][1]{
                score += 20
            }
            if buttonTrue3.isHighlighted != allAnswer[randomNumber][2]{
                score += 20
            }
            if buttonTrue4.isHighlighted != allAnswer[randomNumber][3]{
                score += 20
            }
            if buttonTrue5.isHighlighted != allAnswer[randomNumber][4]{
                score += 20
            }
            textScore.text = "Your score : \(score)%"
            
            if score != 100{
                text100.isHidden = false
                textGratz.isHidden = true
                textNoAswer.isHidden = true
                imagePlayBuble.isHidden = false
                textScore.isHidden = false
                textName.isHidden = true
                textNowYouKnow.isHidden = true
            }else{
                text100.isHidden = true
                textGratz.isHidden = false
                textNoAswer.isHidden = true
                textScore.isHidden = true
                textName.text = allName[randomNumber]
                textName.isHidden = false
                textNowYouKnow.isHidden = false
            }
            score = 0
        }
    }
    
    //allert setting
    func showAlertAnswer() {
        let alert = UIAlertController(title: "Message", message: "Answer all the questions please", preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)
    }
    //    func showAlertScore() {
    //        let alert = UIAlertController(title: "Message", message: "Your score : \(score)%", preferredStyle: .alert)
    //        let action = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
    //        alert.addAction(action)
    //        self.present(alert, animated: true, completion: nil)
    //    }
}

