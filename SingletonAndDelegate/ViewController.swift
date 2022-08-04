//
//  ViewController.swift
//  SingletonAndDelegate
//
//  Created by Сайфуллин Ринат on 01.08.2022.
//

import UIKit



protocol Observer: AnyObject {
    func getContent (content: Center )
    
}

protocol Observable {
    func add(observer: Observer)
    func remove(observer: Observer)
    func notity(content: String)
}


class Center: Observable{
    
    var state: String = "" {
        didSet {
            notity(content: state)
        }
    }
    
    private var observers = [Observer]()
    
    
    
    
    func add(observer: Observer) {
        self.observers.append(observer)
    }
    
    func remove(observer: Observer) {
        if let index = observers.firstIndex(where: {$0 === observer})
        {
            observers.remove(at:index)
            
        }
    }
    
    func notity(content: String) {
        for observer in observers {
            observer.getContent(content: self)
        }
    }
    
    
    
}

class Subscriber: Observer {
    
    
    var name: String
    
    init (name: String) {
        self.name = name
    }

    func getContent(content: Center) {
        print("User \(name) get new content: \(content)")
    }
    
    
    
}


class ViewController: UIViewController {
    
    let center = Center()
    
    
    
    let userOne = Subscriber(name: "Itan")
    let userTwo = Subscriber(name: "Hunt")

    let session =  Session.shared

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
     
    }

    @IBAction func userOneFollow(_ sender: UISwitch) {
        
        if sender.isOn {
            center.add(observer: userOne)
        }
        
    }
    

    @IBAction func sendAction(_ sender: UIButton) {
        
        center.state = "New content"
        
    }
    @IBAction func userTwoFollow(_ sender: UISwitch) {
        if sender.isOn {
            center.add(observer: userTwo)
        }
    }
}

