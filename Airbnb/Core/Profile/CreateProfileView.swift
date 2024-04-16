//
//  CreateProfileView.swift
//  Airbnb
//
//  Created by Dan Hozan on 15.04.2024.
//

import SwiftUI

struct CreateProfileView: View {
    
    @Binding var isCreateProfileViewPresented: Bool
    
    @State private var isUniversityPopupPresented = false
    @State private var isWorkPopupPresented = false
    @State private var isLocationPopupPresented = false
    @State private var isLanguagesPopupPresented = false
    @State private var isAgePopupPresented = false
    @State private var isSongPopupPresented = false
    @State private var isLovePopupPresented = false
    @State private var isFunFactPopupPresented = false
    @State private var isUselessSkillPopupPresented = false
    @State private var isBiographyTitlePopupPresented = false
    @State private var isSpendTimePopupPresented = false
    @State private var isPetsPopupPresented = false
    @State private var isAboutYouPresented = false
    @State private var history = false
    
    @State var university = ""
    @State var work = ""
    @State var location = ""
    @State var languages = ""
    @State var age = ""
    @State var song = ""
    @State var love = ""
    @State var funFact = ""
    @State var uselessSkill = ""
    @State var biographyTitle = ""
    @State var spendTime = ""
    @State var pets = ""
    @State var aboutYou = ""
    
    var user: User
    
    var body: some View {
        
        NavigationStack {
            ZStack(alignment: .bottom) {
                ScrollView() {
                    VStack(alignment: .leading) {
                        
                        // profile image
                        ZStack() {
                            Image(user.image)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 150, height: 150)
                                .clipShape(Circle())
                            
                            VStack {
                                Spacer()
                                Button {
                                    print("add image")
                                } label: {
                                    HStack {
                                        Image(systemName: "camera.fill")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 15, height: 15)
                                        Text("Add")
                                            .font(.system(size: 14))
                                    }
                                    .padding(.vertical, 5)
                                    .padding(.horizontal, 10)
                                    .background(.white)
                                    .cornerRadius(30)
                                }
                                .tint(.black)
                                .padding(.bottom, 10)
                            }
                            
                        }
                        .frame(height: 180)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .shadow(radius: 10, x: 0, y: 2)
                        
                        // profile
                        VStack(alignment: .leading) {
                            Text("Your profile")
                                .font(.system(size: 18))
                                .fontWeight(.semibold)
                                .padding(.bottom, 3)
                            
                            Text("The information you share will be used across Airbnb to help other guests and Hosts get to know you. ")
                                .font(.system(size: 14))
                                .foregroundColor(.gray)
                            + Text("Learn more")
                                .font(.system(size: 14))
                                .foregroundColor(GRAY_CUSTOM4)
                                .underline()
                        }
                        
                        
                        // Fileds
                        VStack(alignment: .leading) {
                            VStack(alignment: .leading) {
                                
                                Button {
                                    isUniversityPopupPresented.toggle()
                                } label: {
                                    
                                    InputDataWithIcon(image: EditProfile.university.imageName, text: EditProfile.university.rawValue, data: user.university)
                                }
                                .tint(.black)
                                .sheet(isPresented: $isUniversityPopupPresented, content: {
                                    InputDataPopup(title: "Where did you go to school?",
                                                   text: "Whether it's home school, secondary school or trade school, name the school that made you who you are.",
                                                   textField: "Where did you go to school:",
                                                   data: $university,
                                                   isInputDataPopupPresented: $isUniversityPopupPresented)
                                    .presentationDetents([.fraction(0.8)])
                                    
                                })

                                Button {
                                    isWorkPopupPresented.toggle()
                                } label: {
                                    
                                    InputDataWithIcon(image: EditProfile.work.imageName, text: EditProfile.work.rawValue, data: user.work)
                                    
                                }
                                .tint(.black)
                                .sheet(isPresented: $isWorkPopupPresented, content: {
                                    InputDataPopup(title: "What do you do for work?",
                                                   text: "Tell us what your profession is. If you don't have a traditional job, tell us your life's calling. Exemple: Nurse, parent to four kids, or retired surfer.",
                                                   textField: "My work:",
                                                   data: $work,
                                                   isInputDataPopupPresented: $isWorkPopupPresented)
                                    .presentationDetents([.fraction(0.8)])
                                    
                                })
                                
                                Button {
                                    isLocationPopupPresented.toggle()
                                } label: {
                                    InputDataWithIcon(image: EditProfile.location.imageName, text: EditProfile.location.rawValue, data: user.location)
                                }
                                .tint(.black)
                                .sheet(isPresented: $isLocationPopupPresented, content: {
                                    InputDataPopup(title: "Where you live",
                                                   text: "",
                                                   textField: "Where I live:",
                                                   data: $location,
                                                   isInputDataPopupPresented: $isLocationPopupPresented)
                                    .presentationDetents([.fraction(0.8)])
                                })
                                
                                Button {
                                    isLanguagesPopupPresented.toggle()
                                } label: {
                                    InputDataWithIcon(image: EditProfile.languages.imageName, text: EditProfile.languages.rawValue, data: user.languages)
                                }
                                .tint(.black)
                                .sheet(isPresented: $isLanguagesPopupPresented, content: {
                                    InputDataPopup(title: "Languages you speak",
                                                   text: "",
                                                   textField: "Languages I speak:",
                                                   data: $languages,
                                                   isInputDataPopupPresented: $isLanguagesPopupPresented)
                                    .presentationDetents([.fraction(0.8)])
                                })
                                
                                Button {
                                    isAgePopupPresented.toggle()
                                } label: {
                                    InputDataWithIcon(image: EditProfile.age.imageName, text: EditProfile.age.rawValue, data: user.age)
                                }
                                .tint(.black)
                                .sheet(isPresented: $isAgePopupPresented, content: {
                                    InputDataPopup(title: "Year you were born",
                                                   text: "Dont't worry, other people won't be able to see your exact bithday.",
                                                   textField: "Year I was born:",
                                                   data: $age,
                                                   isInputDataPopupPresented: $isAgePopupPresented)
                                    .presentationDetents([.fraction(0.8)])
                                })

                                Button {
                                    isSongPopupPresented.toggle()
                                } label: {
                                    
                                    InputDataWithIcon(image: EditProfile.song.imageName, text: EditProfile.song.rawValue, data: user.song)
                                }
                                .tint(.black)
                                .sheet(isPresented: $isSongPopupPresented, content: {
                                    InputDataPopup(title: "What was your favorites song in secondary school?",
                                                   text: "However embarrassing, share the tune you listened to on repeat as a teenager.",
                                                   textField: "My favorite song in secondary school:",
                                                   data: $song,
                                                   isInputDataPopupPresented: $isSongPopupPresented)
                                    .presentationDetents([.fraction(0.8)])
                                })
                                
                                Button {
                                    isLovePopupPresented.toggle()
                                } label: {
                                    InputDataWithIcon(image: EditProfile.love.imageName, text: EditProfile.love.rawValue, data: user.love)
                                }
                                .tint(.black)
                                .sheet(isPresented: $isLovePopupPresented, content: {
                                    InputDataPopup(title: "What are you obsessed with?",
                                                   text: "Share whatever you can't get enough of -in a good way. Exemple: Baking rosemary focaccia.",
                                                   textField: "I'm obsessed with:",
                                                   data: $love,
                                                   isInputDataPopupPresented: $isLovePopupPresented)
                                    .presentationDetents([.fraction(0.8)])
                                })
                            }
                            
                            VStack(alignment: .leading) {
                                
                                Button {
                                    isFunFactPopupPresented.toggle()
                                } label: {
                                    InputDataWithIcon(image: EditProfile.funFact.imageName, text: EditProfile.funFact.rawValue, data: user.funFact)
                                }
                                .tint(.black)
                                .sheet(isPresented: $isFunFactPopupPresented, content: {
                                    InputDataPopup(title: "What's a fun fact about you?",
                                                   text: "Share something unique or unexpected about you. Exemple: I was in a music vieo or I'm a juggler.",
                                                   textField: "My fun fact:",
                                                   data: $funFact,
                                                   isInputDataPopupPresented: $isFunFactPopupPresented)
                                    .presentationDetents([.fraction(0.8)])
                                })
                                
                                Button {
                                    isUselessSkillPopupPresented.toggle()
                                } label: {
                                    
                                    InputDataWithIcon(image: EditProfile.uselessSkill.imageName, text: EditProfile.uselessSkill.rawValue, data: user.uselessSkill)
                                }
                                .tint(.black)
                                .sheet(isPresented: $isUselessSkillPopupPresented, content: {
                                    InputDataPopup(title: "What's your most useless skill?",
                                                   text: "Share a surprising but pointless talent you have. Exemple: Shuffling cards with one hands.",
                                                   textField: "My most useless skill:",
                                                   data: $uselessSkill,
                                                   isInputDataPopupPresented: $isUselessSkillPopupPresented)
                                    .presentationDetents([.fraction(0.8)])
                                })
                                
                                
                                Button {
                                    isBiographyTitlePopupPresented.toggle()
                                } label: {
                                    InputDataWithIcon(image: EditProfile.biographyTitle.imageName, text: EditProfile.biographyTitle.rawValue, data: user.biographyTitle)
                                }
                                .tint(.black)
                                .sheet(isPresented: $isBiographyTitlePopupPresented, content: {
                                    InputDataPopup(title: "What would your biography title be?",
                                                   text: "If someone wrote a book about your life, what would they call it? Exemple: Born to Roam or Chronicles of a Dog Mum.",
                                                   textField: "My biography title would be:",
                                                   data: $biographyTitle,
                                                   isInputDataPopupPresented: $isBiographyTitlePopupPresented)
                                    .presentationDetents([.fraction(0.8)])
                                })
                                
                                Button {
                                    isSpendTimePopupPresented.toggle()
                                } label: {
                                    InputDataWithIcon(image: EditProfile.spendTime.imageName, text: EditProfile.spendTime.rawValue, data: user.spendTime)
                                }
                                .tint(.black)
                                .sheet(isPresented: $isSpendTimePopupPresented, content: {
                                    InputDataPopup(title: "What do you spend too much time doing?",
                                                   text: "Share an activity or hobby you spend lots of free time on. Exemple: Watching cat videos or playing chess.",
                                                   textField: "I spend too much time:",
                                                   data: $spendTime,
                                                   isInputDataPopupPresented: $isSpendTimePopupPresented)
                                    .presentationDetents([.fraction(0.8)])
                                })
                                
                                Button {
                                    isPetsPopupPresented.toggle()
                                } label: {
                                    InputDataWithIcon(image: EditProfile.pets.imageName, text: EditProfile.pets.rawValue, data: user.pets)
                                }
                                .tint(.black)
                                .sheet(isPresented: $isPetsPopupPresented, content: {
                                    InputDataPopup(title: "Do you have any pets in your life??",
                                                   text: "Share any pets you have and their names. exemple: My calico cat Whiskers or my speedy tortoise Leonardo.",
                                                   textField: "Pets:",
                                                   data: $pets,
                                                   isInputDataPopupPresented: $isPetsPopupPresented)
                                    .presentationDetents([.fraction(0.8)])
                                })
                            }
                        }
                        .padding(.vertical)
                        
                        // about you
                        VStack(alignment: .leading) {
                            Text("About you")
                                .font(.system(size: 18))
                                .fontWeight(.semibold)
                                .padding(.bottom, 5)
                            
                            
                            VStack(alignment: .leading) {
                                
                                if let description = user.description {
                                    Text(description)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .font(.system(size: 14))
                                        .foregroundColor(.gray)
                                        .padding(.bottom, 1)
                                } else {
                                    Text("Write somthing fun and punchy. ")
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .font(.system(size: 14))
                                        .foregroundColor(.gray)
                                        .padding(.bottom, 1)
                                }
                                
                                Button {
                                    isAboutYouPresented.toggle()
                                } label: {
                                    Text("Add into")
                                        .font(.system(size: 14))
                                        .underline()
                                }
                                .tint(.black)
                                .sheet(isPresented: $isAboutYouPresented) {
                                    AboutYouInputPopup(title: "About you", text: "Tell us a little bit about yourself so your future Hosts or guests can ger to know you.", textField: "", data: $aboutYou, isInputDataPopupPresented: $isAboutYouPresented)
                                        .presentationDetents([.fraction(0.8)])
                                }
                                
                            }
                            .padding()
                            .overlay {
                                RoundedRectangle(cornerRadius: 10)
                                    .strokeBorder(style: StrokeStyle(lineWidth: 1, dash: [5]))
                                    .foregroundColor(.gray)
                            }
                        }
                        
                        Divider()
                            .background(.gray)
                            .padding(.vertical, 25)
                        
                        // What you're into
                        VStack(alignment: .leading) {
                            Text("What you're into")
                                .font(.system(size: 18))
                                .fontWeight(.semibold)
                                .padding(.bottom, 5)
                            Text("Find common ground with other guests and Hosts by adding interests to your profile.")
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .font(.system(size: 14))
                                .foregroundColor(.gray)
                                .padding(.bottom, 10)
                            
                            HStack {
                                Image(systemName: "plus")
                                    .padding(.vertical, 8)
                                    .padding(.horizontal, 25)
                                    .overlay {
                                        RoundedRectangle(cornerRadius: 30)
                                            .strokeBorder(style: StrokeStyle(lineWidth: 1, dash: [5]))
                                            .foregroundColor(.gray)
                                    }
                                Image(systemName: "plus")
                                    .padding(.vertical, 8)
                                    .padding(.horizontal, 25)
                                    .overlay {
                                        RoundedRectangle(cornerRadius: 30)
                                            .strokeBorder(style: StrokeStyle(lineWidth: 1, dash: [5]))
                                            .foregroundColor(.gray)
                                    }
                                Image(systemName: "plus")
                                    .padding(.vertical, 8)
                                    .padding(.horizontal, 25)
                                    .overlay {
                                        RoundedRectangle(cornerRadius: 30)
                                            .strokeBorder(style: StrokeStyle(lineWidth: 1, dash: [5]))
                                            .foregroundColor(.gray)
                                    }
                            }
                            Text("Add interests and sports")
                                .font(.system(size: 14))
                                .underline()
                                .padding(.vertical)
                            
                        }
                        
                        Divider()
                            .background(.gray)
                            .padding(.vertical, 25)
                        
                        // where you've been
                        VStack(alignment: .leading) {
                            HStack {
                                Text("Where you've been")
                                    .font(.system(size: 18))
                                    .fontWeight(.semibold)
                                    .padding(.bottom, 5)
                            Spacer()
                                Toggle("", isOn: $history)
                            }
                            
                            Text("Choose whether other people can see all the places you've been on Airbnb.")
                                .font(.system(size: 14))
                                .padding(.vertical)
                                .foregroundColor(GRAY_CUSTOM3)
                            
                            ScrollView(.horizontal) {
                                HStack {
                                    ForEach(1 ... 3, id: \.self) { int in
                                        Image(systemName: "photo")
                                            .resizable()
                                            .frame(width: 130, height: 130)
                                            .padding()
                                    }
                                }
                            }
                        }
                    }
                }
                .padding(.bottom, 90)
                
                VStack {
                    Button {
                        isCreateProfileViewPresented.toggle()
                    } label: {
                        ButtonLabelWithColor(text: "Done", color: .black)
                            .padding(.horizontal)
                    }
                    .padding(.top, 15)
                    Spacer()
                }
                .frame(maxHeight: 90)
                .background(.white)
                
            }
            .padding(.horizontal)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        isCreateProfileViewPresented.toggle()
                    } label: {
                        XButtonLabel()
                    }
                    
                }
            }
            .ignoresSafeArea(.all, edges: .bottom)
        }
    }
}



struct CreateProfileView_Previews: PreviewProvider {
    static var previews: some View {
        CreateProfileView(isCreateProfileViewPresented: .constant(true), user: MOCK_DATA_USER)
    }
}
