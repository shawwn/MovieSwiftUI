//
//  CustomListDetail.swift
//  MovieSwift
//
//  Created by Thomas Ricouard on 19/06/2019.
//  Copyright © 2019 Thomas Ricouard. All rights reserved.
//

import SwiftUI

struct CustomListDetail : View {
    @EnvironmentObject var store: AppStore
    let listId: UUID
    
    var list: CustomList {
        return store.state.moviesState.customLists.first{ $0.id == listId}!
    }
    
    var body: some View {
        Text(list.name)
    }
}

#if DEBUG
struct CustomListDetail_Previews : PreviewProvider {
    static var previews: some View {
        CustomListDetail(listId: sampleStore.state.moviesState.customLists.first!.id)
            .environmentObject(sampleStore)
    }
}
#endif
