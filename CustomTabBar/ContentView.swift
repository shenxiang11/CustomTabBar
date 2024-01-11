//
//  ContentView.swift
//  CustomTabBar
//
//  Created by FS on 2024/1/10.
//

import SwiftUI

struct ContentView: View {
    @State var selectedTab: Tab = .Home
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .bottom) {
                TabView(selection: $selectedTab) {
                    Color.red
                        .ignoresSafeArea(.all)
                        .tag(Tab.Home)
                    
                    Color.orange
                        .ignoresSafeArea(.all)
                        .tag(Tab.People)
                    
                    Color.yellow
                        .ignoresSafeArea(.all)
                        .tag(Tab.Message)
                    
                    Color.green
                        .ignoresSafeArea(.all)
                        .tag(Tab.Message)
                    
                    Color.blue
                        .ignoresSafeArea(.all)
                        .tag(Tab.Profile)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                
                HStack {
                    ForEach(Tab.allCases, id: \.self) { tab in
                        Button {
                            selectedTab = tab
                        } label: {
                            VStack(spacing: 4.0) {
                                Image(systemName: tab.icon)
                                Text(tab.label)
                                    .font(.footnote)
                            }
                            .frame(maxWidth: .infinity)
                            .opacity(selectedTab == tab ? 1 : 0.6)
                        }
                    }
                }
                .padding(.horizontal, 20)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .frame(height: 60)
                .background {
                    RoundedRectangle(cornerRadius: 15)
                        .foregroundColor(.black)
                }
                .padding(.bottom)
                .padding(.horizontal, 30)
            }
        }
    }
}

#Preview {
    ContentView()
}
