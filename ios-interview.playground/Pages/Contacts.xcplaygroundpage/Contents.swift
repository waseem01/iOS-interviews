import Foundation

class Contact: Comparable {
    let firstName: String
    let lastName: String
    let email: String

    init(firstName: String, lastName: String, email: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
    }

    public static func < (lhs: Contact, rhs: Contact) -> Bool {
        return lhs.lastName < rhs.lastName
    }

    public static func == (lhs: Contact, rhs: Contact) -> Bool {
        return lhs.lastName == rhs.lastName
    }
}

let contact1 = Contact(firstName: "Waseem1", lastName: "Mohd1", email: "waseem1@email.com")
let contact2 = Contact(firstName: "Waseem2", lastName: "Mohd2", email: "waseem2@email.com")
let contact3 = Contact(firstName: "Waseem1", lastName: "Mohd1", email: "waseem1@email.com") //Dup

let contactsArray = [contact1, contact2, contact3]

for contact in contactsArray.sorted() {
    print("\(contact.lastName), \(contact.firstName)")
}