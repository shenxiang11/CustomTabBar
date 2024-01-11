//
//  Tab.swift
//  CustomTabBar
//
//  Created by FS on 2024/1/11.
//

import Foundation

enum Tab: CaseIterable {
    case Home
    case People
    case Job
    case Message
    case Profile
    
    var label: String {
        switch self {
        case .Home:
            "首页"
        case .People:
            "人脉"
        case .Job:
            "职位"
        case .Message:
            "消息"
        case .Profile:
            "我"
        }
    }
    
    var icon: String {
        switch self {
        case .Home:
            "house.fill"
        case .People:
            "person.2.fill"
        case .Job:
            "handbag.fill"
        case .Message:
            "bubble.left.and.bubble.right.fill"
        case .Profile:
            "person.circle"
        }
    }
}
