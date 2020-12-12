//
//  MainView.swift
//  TabViewViper
//
//  Created by Kelvin HT on 12/11/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import SwiftUI

struct MainView: View {
    
    @ObservedObject var mainPresenter: MainPresenter
    
    var body: some View {
        mainPresenter.tabViewProgram()
    }
}
