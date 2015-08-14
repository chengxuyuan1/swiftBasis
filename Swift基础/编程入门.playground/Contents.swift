////: Playground - noun: a place where people can play
//
//import UIKit
//
//var str = "Hello, playground"
//let implicitInterger=70//常量
//let implicitDouble=70.0
//let explictitDouble:Double=70
//println("Hello,world")
////let常量，var变量
//
//var myVariable=42;//变量
//myVariable=50
//let myConstant = 42
//let imlicitLnteger=70
//let imlictDouble=70.0
//let explictDowble:Double=70
//
//let label="The width is"
//let width=94
//let widthLabel=label+String(width)
//
////还有更简单的方法来在字符串中包含值：以小括号来写值，并用反斜线("")放在小括号之前。例如:
//let apples=3
//let oranges=5//by gashero
//let appleSummary="I have \(apples) apples."
//let fruitSummary="I have \(apples+oranges) of fruit"
//
////创建一个数组和字典使用方括号 "[]" ，访问其元素则是通过方括号中的索引或键
//var shoppingList=["catfish","water","tulips","blue paint"]
//shoppingList[1]="bottle of water"
//
//var occupations =[
//    "Malcolm":"Captain",
//    "Kaylee":"Mechanic"
//]
//
//occupations["Jayne"]="Public Relations"
//occupations
//
////要创建一个空的数组或字典，使用初始化语法:
//let emptyArray=String[]()
//let emptyDictionary=Dictionary<String,Float>()
//4   控制流
//
//使用 if 和 switch 作为条件控制。使用 for-in 、 for 、 while 、 do-while 作为循环。小括号不是必须的，但主体的大括号是必需的。

//let individualSores=[75,43,103,87,12]
//var teamScore=0
//for score in individualSores{
//    if score>50{
//        teamScore+=3
//    }
//    else
//    {
//        teamScore+=1
//    }
//}
//
//teamScore

//var optionalString:String?="Hello"
//optionalString==nil
//
//var optionalName:String?="John Appleseed"
//var greeting ="Hello,\(name)"

//switch 支持多种数据以及多种比较，不限制必须是整数和测试相等。
//let vegetable ="red pepper"
//switch vegetable{
//
//case "celery":
//    let vegetableComment="Add some raisns and make ants on a log."
//case "cucumber","watercress":
//    let vagetableComment="That would make a good tea good tea sandwich"
//case let x where x.hasSuffix("pepper"):
//    let vegetableComment="Is it aspicy\(x)"
//default://by gashero
//    let vegetableComment ="Everything tastes good insoup"
//
//}

//let interestingNumbers=[
//    "prime":[1,1,2,3,5,8],
//    "Fibonacci":[2,3,5,7,11,13],
//    "Square":[1,4,9,16,25]
//]
//
//var largest=0
//for (kind,numbers) in interestingNumbers
//{
//    for number in numbers
//    {
//        if number >largest
//        {
//            largest=number
//        }
//
//    }
//
//}

//var n=2
//while n<100
//{
//    n=n*2
//}
//n
//
//var m=2
//do{
//  m=m*2
//}while m<100
//
//m
//
//var firstForLoop=0
//for i in 0...3{
//    firstForLoop+=i
//}
//firstForLoop
//var secondForLoop=0
//for var i=0 ;i<3;++i
//{
//    secondForLoop+=1
//}
//secondForLoop
////5   函数与闭包
////使用 func 声明一个函数。调用函数使用他的名字加上小括号中的参数列表。使用 -> 分隔参数的名字和返回值类型。
//func greet(name:String,day:String)->String
//{
//    return "Hello \(name),today is\(day)"
//
//}
//greet("Bob", "Tuesday")
////使用元组(tuple)来返回多个值。
//func getGasPricdes()->(Double,Double,Double)
//{
//    return (3.59,3.69,3.79)
//}
//
//getGasPricdes()
////函数可以接受可变参数个数，收集到一个数组中。
//func sumOf(numbers:Int...)->Int
//{
//    var sum=0
//    for number in numbers
//    {
//        sum += number
//    }
//    return  sum
//}
//
//sumOf()
//sumOf(42,797,12)
////函数可以嵌套。内嵌函数可以访问其定义所在函数的变量。你可以使用内嵌函数来组织代码，避免过长和过于复杂。
//func returnFifteen()->Int
//{
//    var y=10
//    func add()
//    {
//        y+=5
//    }
//    add()
//    return y
//}
//returnFifteen()
////函数是第一类型的。这意味着函数可以返回另一个函数。
//func makeIncrementer()->(Int->Int)
//{
//    func addOne(number:Int)->Int
//    {
//        return 1 + number
//    }
//    return addOne
//
//}
//var increment = makeIncrementer()
//increment(7)
//// 一个函数可以接受其他函数作为参数。
//func hasAnyMatches(list:[Int],condition: Int -> Bool)->Bool
//{
//    for item in list
//    {
//        if condition(item)
//        {
//            return true
//        }
//    }
//    return false
//}
//func lessThanTen(number: Int)->Bool
//{
//    return number < 10
//}
//
//var numbers=[20,19,7,12]
//hasAnyMatches(numbers, lessThanTen)
//
//
////函数实际是闭包的特殊情况。你可以写一个闭包而无需名字，只需要放在大括号中即可。使用 in 到特定参数和主体的返回值。
//numbers.map({
//    (number:Int)->Int in
//    let result=3*number
//    return result
//})
////编写闭包时有多种选项。当一个闭包的类型是已知时，例如代表回调，你可以忽略其参数和返回值，或两者。单一语句的闭包可以直接返回值。
//numbers.map({number in 3*number})
//你可以通过数字而不是名字来引用一个参数，这对于很短的闭包很有用。一个闭包传递其最后一个参数到函数作为返回值。
//var arr=[1,5,3,12,2]
//sort(&arr) {$0 > $1}
//arr
//
////6   对象与类
////
////使用 class 可以创建一个类。一个属性的声明则是在类里作为常量或变量声明的，除了是在类的上下文中。方法和函数也是这么写的。
//class Shape
//{
//    var numberOfSides=0
//    func simpleDescription()->String
//    {
//        return "A shpe with \(numberOfSides)sides."
//    }
//}
//var shape=Shape()
//shape.numberOfSides=7
//var shapeDesctription=shape.simpleDescription()
//
////这个版本的 Shape 类有些重要的东西不在：一个构造器来在创建实例时设置类。使用 init 来创建一个。
//
//class NamedShape {
//    var numberOfSides:Int=0
//    var name :String
//    init(name:String)
//    {
//        self.name=name
//    }
//
//}
//
//
//func simpleDescription()->String
//{
//    return "A Shape with \(4)."
//}
////注意 self 用来区分 name 属性和 name 参数。构造器的生命跟函数一样，除了会创建类的实例。每个属性都需要赋值，无论在声明里还是在构造器里。
////使用 deinit 来创建一个析构器，来执行对象销毁时的清理工作。
////子类包括其超类的名字，以冒号分隔。在继承标准根类时无需声明，所以你可以忽略超类。
////子类的方法可以通过标记 override 重载超类中的实现，而没有 override 的会被编译器看作是错误。编译器也会检查那些没有被重载的方法。
//class Square:NamedShape
//{
//    var sideLength:Double
//    init(sideLenth:Double,name:String)
//    {
//        self.sideLength=sideLenth
//        super.init(name: name)
//        numberOfSides=4
//    }
//    func area()->Double
//    {
//        return sideLength * sideLength
//    }
//    override func simpleDescription()->String
//    {
//        return "A square with sides of length \(sideLength)."
//    }
//
//
//}
//
//let test=Square(sideLenth: 5.2, name: "my test square")
//test.area()
//test.simpleDescription()
//
////属性可以有 getter 和 setter 。
//class EquilateralTriangle: NamedShape {
//    var sideLength:Double=0.0
//    init(sideLenth:Double,name:String) {
//        self.sideLength=sideLenth
//        super.init(name: name)
//        numberOfSides=3
//    }
//    var perimeter:Double{
//
//        get{
//            return 3.0 * sideLength
//        }
//        set {
//            sideLength = newValue/3
//        }
//    }
//
//    override func simpleDescription()->String{
//        return "An equilateral triangle with sides of length \(sideLength)"
//    }
//}
//
//var triangel=EquilateralTriangle(sideLenth: 3.1, name: "a triangle")
//
//triangel.perimeter
//triangel.perimeter=9.9
//triangel.sideLength
////在 perimeter 的 setter 中，新的值的名字就是 newValue 。你可以提供一个在 set 之后提供一个不冲突的名字。
////注意 EquilateralTriangle 的构造器有3个不同的步骤：
////1.	设置属性的值
////2.	调用超类的构造器
////3.	改变超类定义的属性的值，添加附加的工作来使用方法、getter、setter也可以在这里
////如果你不需要计算属性，但是仍然要提供在设置值之后执行工作，使用 willSet 和 didSet 。例如，下面的类要保证其三角的边长等于矩形的变长。
//class TriangleAndSquare {
//
//    var square:Square{
//        willSet{
//            triangel.sideLength=newValue.sideLength
//        }
//    }
//    var triangle:EquilateralTriangle{
//        willSet{
//            square.sideLength=newValue.sideLength
//        }
//
//    }
//    init(size:Double,name:String){
//
//        square=Square(sideLenth: size, name: name)
//       triangle = EquilateralTriangle(sideLenth: size, name: name)
//
//    }
//}
//
//var triangleAndSquare=TriangleAndSquare(size: 10, name: "another test shape")
//
//triangleAndSquare.square.sideLength
//triangleAndSquare.triangle.sideLength
//triangleAndSquare.square=Square(sideLenth: 50, name: "larger square")
//triangleAndSquare.triangle.sideLength
////类的方法与函数有个重要的区别。函数的参数名仅用与函数，但方法的参数名也可以用于调用方法(除了第一个参数)。缺省时，一个方法有一个同名的参数，调用时就是参数本身。你可以指定第二个名字，在方法内部使用。
//class Counter{
//    var count:Int = 0
//    func incrementBy(amount: Int ,numberOfTimers times:Int){
//
//        count + = amount * times
//
//    }
//}
//
//var counter=Counter()
//
//Counter.incrementBy(2,numberOfTimers:7)
//
////当与可选值一起工作时，你可以写 "?" 到操作符之前类似于方法属性。如果值在"?"之前就已经是 nil ，所有在 "?" 之后的都会自动忽略，而整个表达式是 nil 。另外，可选值是未包装的，所有 "?" 之后的都作为未包装的值。在两种情况中，整个表达式的值是可选值。
//let optionalSquare:Square?=Square(sideLenth: 2.5, name: "optional square")
//let sideLength = optionalSquare?.sideLength
//
////7   枚举与结构
////使用 enum 来创建枚举。有如类和其他命名类型，枚举可以有方法。
//
//enum Rank: Int {
//    case Ace = 1
//    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
//    case Jack, Queen, King
//    func simpleDescription() -> String {
//        switch self {
//        case .Ace:
//            return "ace"
//        case .Jack:
//            return "jack"
//        case .Queen:
//            return "queen"
//        case .King:
//            return "king"
//        default:
//            return String(self.rawValue)
//        }
//    }
//}
//let ace = Rank.Ace
//let aceRawValue = ace.rawValue
////使用 toRaw 和 fromRaw 函数可以转换原始值和枚举值。
//if let convertedRank=Rank(rawValue: 3){
//    let threeDesctiption=convertedRank.simpleDescription()
//}
////枚举的成员值就是实际值，而不是其他方式写的原始值。实际上，有些情况是原始值，就是你不提供的时候。
//enum Suit{
//    case Spades,Hearts,Diamonds,Clubs
//    func simpleDescription()->String{
//        switch self{
//
//        case .Spades:
//            return "spades"
//        case .Hearts:
//            return "hearts"
//        case .Diamonds:
//            return "dismonds"
//        case .Clubs:
//            return "clubs"
//        }
//    }
//}
//
//
//let hearts = Suit.Hearts
//let heartsDesctiption=hearts.simpleDescription()
////注意上面引用Hearts成员的两 种方法：当赋值到 hearts 常量时，枚举成员 Suit.Hearts 通过全名引用，因为常量没有明确的类型。在 switch 中，枚举通过 .Hearts 引用，因为 self 的值是已知的。你可以在任何时候使用方便的方法。
////使用 struct 创建结构体。结构体支持多个与类相同的行为，包括方法和构造器。一大重要的区别是代码之间的传递总是用拷贝(值传递)，而类则是传递引用。
//
//struct Card {
//    var rank:Rank
//    var suit:Suit
//    func simpleDescription()->String{
//        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
//    }
//}
//
//let threeOfSpades = Card(rank:.Three, suit: .Spades)
//let threeOfSpadesDesctiption=threeOfSpades.simpleDescription()
//个枚举的实例成员可以拥有实例的值。相同枚举成员实例可以有不同的值。你在创建实例时赋值。指定值和原始值的区别：枚举的原始值与其实例相同，你在定义枚举时提供原始值。
//例如，假设情况需要从服务器获取太阳升起和降落时间。服务器可以响应相同的信息或一些错误信息。
enum ServerResponse{
    case Result(String,String)
    case Error(String)
}

let success=ServerResponse.Result("6:00 am","8:09 pm")
let failure=ServerResponse.Error("Out of cheese")

switch success{
case let .Result(sunrise,sunset):
    let serverResponse="Sunrise is at \(sunrise) and sunset is at \(sunset)."
case let .Error(error):
    let serverResponse="Failure...\(error)"
}

