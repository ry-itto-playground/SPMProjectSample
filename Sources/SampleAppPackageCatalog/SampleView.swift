import SwiftUI

public struct SampleViewCatalog: View {

    public init() {}

    let imageNames = [
        "image_jpg",
        "image_png",
        "image_pdf",
    ]
    public var body: some View {

        ScrollView {
            VStack {
                Text("Image(_ named:bundle:)")
                    .font(.title)
                LazyVGrid(columns: [
                    GridItem(),
                    GridItem(),
                ], content: {
                    ForEach(imageNames, id: \.self) { name in
                        VStack {
                            Text(name)
                            Image(name, bundle: .module)
                                .resizable()
                                .scaledToFit()
                        }
                    }
                })
                Text("Image(uiImage:)")
                    .font(.title)
                LazyVGrid(columns: [
                    GridItem(),
                    GridItem(),
                ], content: {
                    ForEach(imageNames, id: \.self) { name in
                        VStack {
                            Text(name)
                            Image(uiImage: UIImage(named: name, in: .module, with: nil) ?? UIImage())
                                .resizable()
                                .scaledToFit()
                        }
                    }
                })
            }
        }
    }
}

public struct SampleViewCatalog_Previews: PreviewProvider {
    public static var previews: some View {
        SampleViewCatalog()
    }
}
