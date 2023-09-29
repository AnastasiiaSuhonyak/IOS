//
//  ContentView.swift
//  Lab2
//
//  Created by Anastasiia Sukhoniak on 15.09.2023.
//

import SwiftUI

struct Student: Identifiable {
    var id = UUID()
    var name: String
    var imageName: String
}

struct ContentView: View {
    let students = [
        Student(name: "Котик", imageName: "cat_photo"),
        Student(name: "Песик", imageName: "dog_photo"),
        Student(name: "Качечка", imageName: "duck_photo")
    ]
    
    let staticBiographyText = "Це група кн-31, яка відправилась на відпочинок на Мальдівах"
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) { // Вирівнюємо по лівому краю
                ForEach(students) { student in
                    HStack {
                        Image(student.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                        Text(student.name)
                    }
                }
                
                Image("maldives")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 300, height: 300)
                    .clipShape(Circle())
                    .padding()
                
                Text(staticBiographyText)
                    .padding()
            }
            .padding()
        }
        .navigationBarTitle("Список студентів", displayMode: .inline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

