//Основи
func basicsType() -> Void { 
//Константи та змінні
//Оголошення констант та змінних
    let maximumNumberOfLoginAttempts = 10
    var currentLoginAttempt = 0
    var x = 0.0, y = 0.0, z = 0.0
    print(maximumNumberOfLoginAttempts, currentLoginAttempt, x, y, z)
//ERROR
//maximumNumberOfLoginAttempts = 11
    currentLoginAttempt = 11
    x = 1.1
    y = 1.1
    z = 1.1
    print(maximumNumberOfLoginAttempts, currentLoginAttempt, x, y, z)

//Анотації типів
    var welcomeMessage: String
    welcomeMessage = "Hello"
    var red, green, blue: Double
    red = 1.0
    green = 0.5
    blue = 0.0
    print(welcomeMessage, red, green, blue)
    
//Іменування констант і змінних
    let π = 3.14159
    let 你好 = "你好世界"
    let 🐶🐮 = "dogcow"

    var friendlyWelcome = "Hello!"
    friendlyWelcome = "Вітаю!"
//Друк констант та змінних
    print(friendlyWelcome)
    print("The current value of friendlyWelcome is \(friendlyWelcome)")
//Крапка з комою
    let cat = "🐱"; print(cat)
//Цілі числа
//Межі цілих чисел
    let minValue = Int8.min  // minValue дорівнює -128, і має тип Int8
    let maxValue = Int8.max  // maxValue дорівнює 127, і має тип Int8
    let minValueU = UInt8.min  // minValue дорівнює 0, і має тип UInt8
    let maxValueU = UInt8.max  // maxValue дорівнює 255, і має тип UInt8
    print(minValue, maxValue, minValueU, maxValueU)
//Типобезпечність та Визначення Типів
    let meaningOfLife = 42
    // визначено, що meaningOfLife матиме тип Int
    let pi = 3.14159
    // визначено, що pi матиме тип Double
    let anotherPi = 3 + 0.14159
    // anotherPi також визначається як значення типу Double
    let decimalInteger = 17
    let binaryInteger = 0b10001       // 17 в двійковій нотації
    let octalInteger = 0o21           // 17 у вісімковій нотації
    let hexadecimalInteger = 0x11     // 17 в шістнадцятковій нотації
    let decimalDouble = 12.1875
    let exponentDouble = 1.21875e1
    let hexadecimalDouble = 0xC.3p0
    let paddedDouble = 000123.456
    let oneMillion = 1_000_000
    let justOverOneMillion = 1_000_000.000_000_1
//Перетворення числових типів
    let three = 3
    let pointOneFourOneFiveNine = 0.14159
    
    let pi2 = Double(three) + pointOneFourOneFiveNine
    print(pi2)
    // константа pi дорівнює 3.14159, і її тип визначено як Double

    let integerPi = Int(pi2)
    print(integerPi)
    // константа integerPi дорівнює 3, і її тип визначено як Int

//Псевдоніми типів
    typealias AudioSample = UInt16
    var maxAmplitudeFound = AudioSample.min
    print(maxAmplitudeFound)
    // maxAmplitudeFound тепер дорівнює 0

//Кортежі
    let http404Error = (404, "Не знайдено")

    // http404Error має тип (Int, String), і дорівнює (404, "Не знайдено")
    let (statusCode, statusMessage) = http404Error

    print("Код стану дорівнює \(statusCode)")

    // Надрукує "Код стану дорівнює 404"

    print("Повідомлення статусу є \(statusMessage)")

    // Надрукує "Повідомлення статусу є Не знайдено"

    let (justTheStatusCode, _) = http404Error

    print("Код статусу дорівнює \(justTheStatusCode)")

    // Надрукує "Код статусу дорівнює 404"

    print("Код статусу дорівнює \(http404Error.0)")

    // Надрукує "Код статусу дорівнює 404"

    print("Повідомлення статусу є \(http404Error.1)")

    // Надрукує "Повідомлення статусу є Не знайдено"

    let http200Status = (statusCode: 200, description: "OK")

    // Якщо елементи кортежу іменовані,

    // можна користуватись їх іменами для доступу до їх значень:

    print("Код статусу дорівнює \(http200Status.statusCode)")

    // Надрукує "Код статусу дорівнює 200"

    print("Повідомлення статусу є \(http200Status.description)")

    // Надрукує "Повідомлення статусу є OK"

//Опціонали
    let possibleNumber = "123"

    let convertedNumber = Int(possibleNumber)

    // тип convertedNumber визначено як "Int?", тобто "опціональний Int"
    var serverResponseCode: Int? = 404

    // serverResponseCode містить фактичне значення 404 типу Int

    serverResponseCode = nil

    // serverResponseCode тепер не містить жодного значення
    var surveyAnswer: String?

//Інструкція If та Примусове розгортання
    if convertedNumber != nil {

    print("convertedNumber містить деяке цілочисельне значення.")

    }

    // Надрукує "convertedNumber містить деяке цілочисельне значення."

    if convertedNumber != nil {

    print("convertedNumber має цілочисельне значення \(convertedNumber!).")

    }

    // Prints "convertedNumber має цілочисельне значення 123."

    if let actualNumber = Int(possibleNumber) {
        print("\"\(possibleNumber)\" має цілочисельне значення \(actualNumber)")
    } else {
        print("\"\(possibleNumber)\" не можна конвертувати у ціле число")
    }
    // Надрукує ""123" має цілочисельне значення 123"
   
    if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
        print("\(firstNumber) < \(secondNumber) < 100")
    }
    // Надрукує "4 < 42 < 100"

    if let firstNumber = Int("4") {
        if let secondNumber = Int("42") {
            if firstNumber < secondNumber && secondNumber < 100 {
                print("\(firstNumber) < \(secondNumber) < 100")
            }
        }
    }
    // Надрукує "4 < 42 < 100"

    //Опціонали, що розгортаються неявно
    let possibleString: String? = "Опціональний рядок."
    let forcedString: String = possibleString! // потрібен знак оклику


    let assumedString: String! = "Опціональний рядок, що розгортається неявно."
    let implicitString: String = assumedString // не потрібен знак оклику

    let optionalString = assumedString
    // Типом константи optionalString є "String?", і assumedString не розгортаєтсья примусово.
    if assumedString != nil {
        print(assumedString!)
    }
    // Надрукує "Опціональний рядок, що розгортається неявно."
    
    if let definiteString = assumedString {
        print(definiteString)
    }

    // Надрукує "Опціональний рядок, що розгортається неявно."

//Припущення  [Зневадження] з припущеннями
    let age = -3
    assert(age >= 0, "Вік особи не може бути меншим від нуля")
    // це призведе до виклику припущення, бо вік не >= 0
}
//Обробка помилок
// func canThrowAnError() throws {
//     // ця функція може або викинути помилку, або відпрацювати успішно.
// }
// func makeASandwich() throws {
//     // ...
// }






//Основи
basicsType()

//Обробка помилок
// do {
//     try canThrowAnError()
//     // помилку не викинуто
// } catch {
//     // помилку викинуто
// }

// do {
//     try makeASandwich()
//     eatASandwich()
// } catch SandwichError.outOfCleanDishes {
//     washDishes()
// } catch SandwichError.missingIngredients(let ingredients) {
//     buyGroceries(ingredients)
// }