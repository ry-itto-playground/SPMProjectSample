//
//  SampleApp_SwiftUIApp.swift
//  SampleApp_SwiftUI
//
//  Created by 伊藤 凌也 on 2021/05/16.
//

import SampleAppPackage
import SampleAppPackageCatalog
import SwiftUI

@main
struct SampleApp: App {
    @State var selection = 0

    var body: some Scene {
        WindowGroup {
            TabView(selection: $selection,
                    content: {
                        SampleView()
                            .tabItem {
                                Text("Use .process")
                            }
                        SampleViewCatalog()
                            .tabItem {
                                Text("Use Asset Catalog")
                            }
                    })
        }
    }
}
