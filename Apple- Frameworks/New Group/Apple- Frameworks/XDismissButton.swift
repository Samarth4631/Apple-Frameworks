//
//  XDismissButton.swift
//  Apple- Frameworks
//
//  Created by samarth srivastava  on 23/09/26.
//

import SwiftUI

struct XDismissButton: View {
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        HStack {
            Spacer()

            Button {
                dismiss()
            } label: {
                Image(systemName: "xmark")
                    .foregroundStyle(.primary)
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            }
        }
    }
}

#Preview {
    XDismissButton()
}
