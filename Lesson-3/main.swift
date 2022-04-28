//
//  main.swift
//  Lesson-3
//
//  Created by Старцев Даниил on 23.04.2022.
//

import Foundation

//1. Описать несколько структур – любой легковой автомобиль SportCar и любой грузовик TrunkCar.

//2. Структуры должны содержать марку авто, год выпуска, объем багажника/кузова, запущен ли двигатель, открыты ли окна, заполненный объем багажника.


//3. Описать перечисление с возможными действиями с автомобилем: запустить/заглушить двигатель, открыть/закрыть окна, погрузить/выгрузить из кузова/багажника груз определенного объема.


//4. Добавить в структуры метод с одним аргументом типа перечисления, который будет менять свойства структуры в зависимости от действия.


//5. Инициализировать несколько экземпляров структур. Применить к ним различные действия.


//6. Вывести значения свойств экземпляров в консоль.


enum TrunkSize: String {
    case large = "Большой"
    case small = "Маленький"
    
}
enum Engine: String {
    case start = "Запуск"
    case stop = "Стоп"
}
enum Window: String {
    case open = "Открыты"
    case close = "Закрыты"
}

struct SportCar {
    
    var model: String
    let yearOfIssure: Int
    var trunkSize: TrunkSize
    var engine : Engine
    var window: Window
    var trunkVolume: Int
    
    mutating func largeTrunkSize() {
        self.trunkSize = .large
    }
    mutating func smallTrunkSize() {
        self.trunkSize = .small
    }
    mutating func startEngine() {
        self.engine = .start
    }
    mutating func stopEngine() {
        self.engine = .stop
    }
    mutating func openWindow() {
        self.window = .open
    }
    mutating func closeWindow() {
        self.window = .close
    }
    
    func printSportCar() {
        print("Модель авто: \(model), год выпуска: \(yearOfIssure),  размер багажника: \(trunkSize), двигатель: \(engine), окна: \(window), объём багадника:\(trunkVolume) литров.")
    }
}
var sportCar1 = SportCar(model: "Bugatti", yearOfIssure: 2008, trunkSize: .small, engine: .stop, window: .close, trunkVolume: 1000 )
var sportCar2 = SportCar(model: "Ferrari", yearOfIssure: 2010, trunkSize: .small, engine: .start, window: .close, trunkVolume: 1200)

sportCar1.largeTrunkSize()
sportCar2.smallTrunkSize()
sportCar1.startEngine()
sportCar2.stopEngine()
sportCar1.openWindow()
sportCar2.closeWindow()

sportCar1.printSportCar()
sportCar2.printSportCar()

struct TrunkCar {
    
    var model: String
    let yearOfIssure: Int
    var trunkSize: TrunkSize
    var engine : Engine
    var window: Window
    var trunkVolume: Int
    
    mutating func largeTrunkSize() {
        self.trunkSize = .large
    }
    mutating func smallTrunkSize() {
        self.trunkSize = .small
    }
    mutating func startEngine() {
        self.engine = .start
    }
    mutating func stopEngine() {
        self.engine = .stop
    }
    mutating func openWindow() {
        self.window = .open
    }
    mutating func closeWindow() {
        self.window = .close
    }
    
    func printSportCar() {
        print("Модель авто: \(model), год выпуска: \(yearOfIssure),  размер багажника: \(trunkSize), двигатель: \(engine), окна: \(window), объём багадника:\(trunkVolume) литров.")
    }
}
var trunkCar1 = SportCar(model: "Hyndai Porter", yearOfIssure: 2005, trunkSize: .small, engine: .stop, window: .close, trunkVolume: 2500 )
var trunkCar2 = SportCar(model: "Газель", yearOfIssure: 2006, trunkSize: .small, engine: .start, window: .close, trunkVolume: 3000)

trunkCar1.largeTrunkSize()
trunkCar2.smallTrunkSize()
trunkCar1.startEngine()
trunkCar2.stopEngine()
trunkCar1.openWindow()
trunkCar2.closeWindow()

trunkCar1.printSportCar()
trunkCar2.printSportCar()
