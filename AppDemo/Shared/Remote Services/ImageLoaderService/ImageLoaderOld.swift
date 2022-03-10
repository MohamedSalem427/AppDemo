//
//  ImageLoader.swift
//  Shift
//
//  Created by ziad on 4/25/20.
//  Copyright © 2020 generation-c. All rights reserved.
//
import class Kingfisher.KingfisherManager
import SwiftUI

extension View {
    func fetchingRemoteImage(from url: URL, completion: @escaping () -> Void = {}) -> some View {
        ModifiedContent(content: self, modifier: RemoteImageModifier(url: url, completion: completion))
    }
}

struct RemoteImageModifier: ViewModifier {
    let url: URL
    @State private var fetchedImage: UIImage? = nil
    var completion: () -> Void
    
    func body(content: Content) -> some View {
        if let image = fetchedImage {
            return Image(uiImage: image)
                .resizable()
                .eraseToAnyView()
        }

        return content
            .onAppear(perform: fetch)
            .eraseToAnyView()
    }

    private func fetch() {
        KingfisherManager.shared.retrieveImage(with: url) { result in
            fetchedImage = try? result.get().image
            completion()
        }
    }
}


