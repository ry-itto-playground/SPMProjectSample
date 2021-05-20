import SwiftUI

public struct SampleView: View {

    public init() {
        print(Bundle.module.path(forResource: "image_jpg", ofType: "jpg"))
    }
    public var body: some View {
        VStack {
//            Image(uiImage: UIImage(named: "image_jpg", in: Bundle.module, with: nil)!)
            
            Image("image_pdf", bundle: .module)
//            Image(uiImage: UIImage(named: "image_png", in: Bundle.module, with: nil)!)
        }
    }
}

public struct SwiftUIView_Previews: PreviewProvider {
    public static var previews: some View {
        SampleView()
    }
}
