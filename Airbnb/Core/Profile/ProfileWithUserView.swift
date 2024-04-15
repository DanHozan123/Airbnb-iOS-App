//
//  ProfileWithUserView.swift
//  Airbnb
//
//  Created by Dan Hozan on 13.04.2024.
//

import SwiftUI

struct ProfileWithUserView: View {
    
    var user: User
    
    @State private var isAuthentificationSheetPresented = false
    @State private var isAirbnbYourPlaceSheetPresented = false
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                VStack {
                    NavigationLink {
                        ShowProfileView(user: user)
                    } label: {
                        
                        HStack {
                            Image(user.image)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 45, height: 45)
                                .clipShape(Circle())
                            VStack(alignment: .leading) {
                                Text("\(user.firstName) \(user.lastName)")
                                    .font(.system(size: 17))
                                Text("Show profile")
                                    .font(.system(size: 13))
                                    .foregroundColor(.gray)
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            Image(systemName: "chevron.right")
                        }
                    }
                    .tint(.black)
                    
                    Divider()
                        .background(.gray)
                    
                    Button {
                        isAirbnbYourPlaceSheetPresented.toggle()
                    } label: {
                        AirbnbYourPlace()
                    }
                    .padding(.vertical, 30)
                    .tint(.black)
                }
                
                
                // Settings
                VStack(alignment: .leading) {
                    
                    Text("Settings")
                        .font(.title3)
                        .padding(.bottom, 10)
                    
                    NavigationLink {
                        PersonalInformationView(user: user)
                    } label: {
                        SettingsItemLabel(image: SettingsItems2.personalInformation.imageName, text:  SettingsItems2.personalInformation.rawValue)
                    }
                    
                    NavigationLink {
                        PaymentsAndPayoutsView()
                    } label: {
                        SettingsItemLabel(image: SettingsItems2.payments.imageName, text:  SettingsItems2.payments.rawValue)
                    }
                    NavigationLink {
                        TaxesView()
                    } label: {
                        SettingsItemLabel(image: SettingsItems2.taxes.imageName, text:  SettingsItems2.taxes.rawValue)
                    }
                    NavigationLink {
                        LoginAndSecurityView()
                    } label: {
                        SettingsItemLabel(image: SettingsItems2.loginAndSecuity.imageName, text:  SettingsItems2.loginAndSecuity.rawValue)
                    }
                    NavigationLink {
                        AccessibilityView()
                    } label: {
                        SettingsItemLabel(image: SettingsItems2.accessibility.imageName, text:  SettingsItems2.accessibility.rawValue)
                    }
                    NavigationLink {
                        TranslationView()
                    } label: {
                        SettingsItemLabel(image: SettingsItems2.translation.imageName, text:  SettingsItems2.translation.rawValue)
                    }
                    NavigationLink {
                        PrivacyPolicyView()
                    } label: {
                        SettingsItemLabel(image: SettingsItems2.privacy.imageName, text:  SettingsItems2.privacy.rawValue)
                    }
                    
                    
                    
                }
                .padding(.vertical, 15)
                .tint(.black)
                
                
                // Hosting
                VStack(alignment: .leading) {
                    
                    Text("Hosting")
                        .font(.title3)
                        .padding(.bottom, 10)
                    
                    NavigationLink {
                        SwitchToHostingView()
                    } label: {
                        SettingsItemLabel(image: HostingItems.switchToHosting.imageName, text:  HostingItems.switchToHosting.rawValue)
                    }
                    NavigationLink {
                        ListYourSpaceView()
                    } label: {
                        SettingsItemLabel(image: HostingItems.listYourSpace.imageName, text:  HostingItems.listYourSpace.rawValue)
                    }
                    NavigationLink {
                        YourGuidebooksView()
                    } label: {
                        SettingsItemLabel(image: HostingItems.guideBook.imageName, text:  HostingItems.guideBook.rawValue)
                    }
                    
                }
                .tint(.black)
                .padding(.vertical, 15)
                
                
                // Hosting
                VStack(alignment: .leading) {
                    
                    Text("Tools")
                        .font(.title3)
                        .padding(.bottom, 10)
                    
                    NavigationLink {
                        SiriSettingsView()
                    } label: {
                        SettingsItemLabel(image: ToolsItems.siri.imageName, text:  ToolsItems.siri.rawValue)
                    }
                }
                .tint(.black)
                .padding(.vertical, 15)
                
                // Support
                VStack(alignment: .leading) {
                    
                    Text("Support")
                        .font(.title3)
                        .padding(.bottom, 10)
                    
                    NavigationLink {
                        HelpCentreView()
                    } label: {
                        SettingsItemLabel(image: SupportItems.helpCentre.imageName, text:  SupportItems.helpCentre.rawValue)
                    }
                    NavigationLink {
                        SafetyIssueView()
                    } label: {
                        SettingsItemLabel(image: SupportItems.safetyIssue.imageName, text:  SupportItems.safetyIssue.rawValue)
                    }
                    NavigationLink {
                        ReportView()
                    } label: {
                        SettingsItemLabel(image: SupportItems.report.imageName, text:  SupportItems.report.rawValue)
                    }
                    NavigationLink {
                        HowAirbnbWorksView()
                    } label: {
                        SettingsItemLabel(image: SupportItems.howAirbnbWorks.imageName, text:  SupportItems.howAirbnbWorks.rawValue)
                    }
                    NavigationLink {
                        FeedbackView()
                    } label: {
                        SettingsItemLabel(image: SupportItems.feedback.imageName, text:  SupportItems.feedback.rawValue)
                    }
                }
                .tint(.black)
                .padding(.vertical, 15)
                
                
                // Legal
                VStack(alignment: .leading) {
                    
                    Text("Legal")
                        .font(.title3)
                        .padding(.bottom, 10)
                    
                    NavigationLink {
                        TermsOfServiceView()
                    } label: {
                        SettingsItemLabel(image: LegalItems.termsOfService.imageName, text:  LegalItems.termsOfService.rawValue)
                    }
                    
                    NavigationLink {
                        PrivacyPolicyView()
                    } label: {
                        SettingsItemLabel(image: LegalItems.privacyPolicy.imageName, text:  LegalItems.privacyPolicy.rawValue)
                    }
                    
                    NavigationLink {
                        OpenSourceLicencesView()
                    } label: {
                        SettingsItemLabel(image: LegalItems.licences.imageName, text:  LegalItems.licences.rawValue)
                    }
                }
                .tint(.black)
                .padding(.vertical, 15)
                
                VStack(alignment: .leading) {
                    Button {
                        isAuthentificationSheetPresented.toggle()
                    } label: {
                        Text("Log out")
                            .underline()
                    }
                    .tint(.black)
                    
                    Text("VERSION 24.14.1(203744)")
                        .foregroundColor(.gray)
                        .font(.footnote)
                        .padding(.vertical, 20)

                }
                .padding(.vertical, 20)
                
            }
            .sheet(isPresented: $isAuthentificationSheetPresented, content: {
                AuthentificationView(isShowingAuthentificationView: $isAuthentificationSheetPresented)
            })
            .sheet(isPresented: $isAirbnbYourPlaceSheetPresented, content: {
                AirbnbYourPlaceView()
            })
            .padding()
            .navigationBarTitle("")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Text("Profile")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        print("notification")
                    } label: {
                        Image(systemName: "bell")
                            .foregroundColor(GRAY_CUSTOM4)
                    }
                    .tint(.black)

                }
            }
        }
    }
}

struct ProfileWithUserView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ProfileWithUserView(user: MOCK_DATA_USER)
        }
    }
}
