//
//  SVGDataImage.swift
//  SVGView
//
//  Created by Alisa Mylnikova on 10/06/2021.
//


import Foundation
public class SVGDataImage: SVGImage {

    public var data: Data

    public init(x: CGFloat = 0, y: CGFloat = 0, width: CGFloat = 0, height: CGFloat = 0, data: Data) {
        self.data = data
        super.init(x: x, y: y, width: width, height: height)
    }

    override func serialize(_ serializer: Serializer) {
        serializer.add("data", "\(data.base64EncodedString())")
        super.serialize(serializer)
    }
}
