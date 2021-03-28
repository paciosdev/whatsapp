//
//  ContentView.swift
//  WhatsApp
//
//  Created by Kekko Paciello on 25/03/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack{
                List(people){ person in
                    PersonCell(person: person)
                }
                .listStyle(PlainListStyle())
            }
            .padding(.top)
            .navigationBarTitle("Chat", displayMode: .inline)
            .navigationBarItems(leading: Button("Modifica"){}, trailing: Button(action: {}, label: {
                Image(systemName: "square.and.pencil")
                    .imageScale(.large)
            }))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct PersonCell: View {
    let person: Person
    var body: some View{
        HStack(alignment: .top){
            Image(uiImage: person.image)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            VStack(alignment: .leading, spacing: 12){
                Text(person.name)
                    .font(.headline)
                
                Text(person.lastMessage)
                    .font(.callout)
                    .foregroundColor(.secondary)
            }
            
            Spacer()
            
            VStack(alignment: .trailing){
                Text(person.lastTime)
                    .font(.headline)
                    .foregroundColor(person.lastIsYour ? .secondary : .blue)
                
                if !person.lastIsYour{
                    Circle().frame(width: 22, height: 22, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.blue)
                        .overlay(Text("1").foregroundColor(.white).font(.headline))
                }
            }
        }
    }
}

struct Person: Identifiable{
    let id = UUID()
    let name: String
    let image: UIImage
    let lastMessage: String
    let lastIsYour: Bool
    let lastTime: String
}

let people: [Person] = [
    Person(name: "Chiara", image: #imageLiteral(resourceName: "1"), lastMessage: "Hi man", lastIsYour: false, lastTime: "12:02"),
    Person(name: "Fabio", image: #imageLiteral(resourceName: "7"), lastMessage: "Where are you going?", lastIsYour: true, lastTime: "1:02"),
    Person(name: "Giovanni🚀", image: #imageLiteral(resourceName: "3"), lastMessage: "Hello", lastIsYour: true, lastTime: "12:02"),
    Person(name: "Lucia", image: #imageLiteral(resourceName: "6"), lastMessage: "Helloooo😃", lastIsYour: true, lastTime: "12:13"),
    Person(name: "Carmen❤️", image: #imageLiteral(resourceName: "5"), lastMessage: "I'm from Italy", lastIsYour: true, lastTime: "19:02"),
    Person(name: "Brother", image: #imageLiteral(resourceName: "4"), lastMessage: "Hi man", lastIsYour: false, lastTime: "22:02"),
    Person(name: "Fabio", image: #imageLiteral(resourceName: "7"), lastMessage: "Where are you going?", lastIsYour: true, lastTime: "1:02"),
    Person(name: "Giovanni🚀", image: #imageLiteral(resourceName: "3"), lastMessage: "Hello", lastIsYour: true, lastTime: "12:02"),
    Person(name: "Lucia", image: #imageLiteral(resourceName: "6"), lastMessage: "Helloooo😃", lastIsYour: true, lastTime: "12:13"),
    Person(name: "Carmen❤️", image: #imageLiteral(resourceName: "5"), lastMessage: "I'm from Italy", lastIsYour: true, lastTime: "19:02"),
    Person(name: "Brother", image: #imageLiteral(resourceName: "4"), lastMessage: "Hi man", lastIsYour: false, lastTime: "22:02")

]
