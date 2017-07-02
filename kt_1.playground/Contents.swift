
import UIKit
//1
public class BankAccount{
    var id: Int
    var balance: Double
    
    init(id: Int, balance: Double){
        self.id = id
        self.balance = balance
    }
    
    func deposit (by amount1: Double) throws {
        guard balance == nil else {
            throw balanceErorr.outOfStock
        }
        
        balance += amount1
       
    }
    
    func withdraw (by amount: Double) throws {
        guard balance < amount else {
            throw balanceErorr.noMoney
        }
        guard balance == nil else {
            throw balanceErorr.outOfStock
        }
        balance -= amount
    }
    
   enum balanceErorr: Error{
        case invalidOperation
        case outOfStock
        case noMoney
    }
 
}
//2
protocol Client{
    var id : Int { get }
    var BankAccount: BankAccount { get }
}

public class Individuals: Client {
    var id: Int
    var BankAccount: BankAccount
    var firstName: String
    var secondName: String
    var date: Date
    init (id: Int, BA: BankAccount , firstName: String, secondName: String, date: String ){
        self.id = id
        self.BankAccount = BA
        self.firstName = firstName
        self.secondName = secondName
        let formatter = DateFormatter()
        formatter.dateFormat = "dd-MM-yyyy"
        self.date = formatter.date(from: date)!
        
    }
}

public class legalEntity: Client {
    var id: Int
    var BankAccount: BankAccount
    var Name: String
    var Org: String
    init (id: Int, BA: BankAccount, name: String, enum org: String){
        self.id = id
        self.BankAccount = BA
        self.Name = name
        self.Org = String(org)
    }
    
}
enum org {
    case OOO
    case OAO
}

//3

fileprivate struct Bank{
    var BankT: BankAccount = BankAccount(id: 0, balance: 1000000.0)
    static fileprivate func transfer( sender: Client, count: Double , recipient: BankAccount){
        sender.BankAccount.balance = sender.BankAccount.balance - count
        recipient.balance += count
    }
}

var Vasya: Individuals = Individuals(id: 1, BA: BankAccount(id : 1, balance: 100000.0), firstName: "Vasya", secondName: "Vasichkin", date: "12-01-1779")
    Bank.transfer(sender: Vasya, count: 10, recipient: Bank.init().BankT)
    Vasya.BankAccount.balance






