import UIKit

class TitleColorLabel: UILabel {

    // Custom initializer to set up the label with a specific title and color
    init(title: String, color: UIColor) {
        super.init(frame: .zero)
        self.text = title
        self.textColor = color
        self.setup()
    }

    // Required initializer for using this class from a storyboard or nib
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.setup()
    }

    // Common setup code can go here
    private func setup() {
        self.font = UIFont.boldSystemFont(ofSize: 18) // Customize the font if needed
        self.textAlignment = .center // Center align the text
    }
}

// Usage example
let titleLabel = TitleColorLabel(title: "Hello, World!", color: .blue)
titleLabel.frame = CGRect(x: 0, y: 0, width: 200, height: 50)

// Add the label to a view for display (assuming in a UIViewController context)
// self.view.addSubview(titleLabel)
