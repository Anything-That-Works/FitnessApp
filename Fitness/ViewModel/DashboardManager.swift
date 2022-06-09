//
//  DashboardManager.swift
//  Fitness
//
//  Created by Promal on 10/5/22.
//

import SwiftUI

class DashboardManager: ObservableObject {
    @Published var dashboardMenus = menus
    @Published var selectedMenuIndex = 0
    
    func selectMenu(index: Int) {
        dashboardMenus[index].selected = true
        
        if index != selectedMenuIndex {
            
            dashboardMenus[index].selected = false
            selectedMenuIndex = index
        }
    }
}
