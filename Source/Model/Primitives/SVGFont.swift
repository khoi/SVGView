
import Foundation

public class SVGFont: SerializableBlock {

    public let name: String
    public let size: CGFloat
    public let weight: String

    public init(name: String = "Serif", size: CGFloat = 16, weight: String = "normal") {
        self.name = name
        self.size = size
        self.weight = weight
    }
    func serialize(_ serializer: Serializer) {
        serializer.add("name", name, "Serif").add("size", size, 16).add("weight", weight, "normal")
    }
}


