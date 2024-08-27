//
//  ContentView.swift
//  RPN Calculator Watch App
//
//  Created by Kyra Cho on 8/26/24.
//
import SwiftUI

struct ContentView: View {
    @State private var stack: [Double] = []
    @State private var currentInput: String = ""

    var body: some View {
        VStack {
            HStack {
                Text("Stack: \(stack.map { formattedNumber($0) }.joined(separator: ", "))")
                    .font(.system(size: 14))
                Spacer() // This will push the text to the left
            }

            Text(currentInput)
                .font(.system(size: 14))

            HStack {
                ForEach(["7", "8", "9"], id: \.self) { number in
                    Button(action: {
                        currentInput.append(number)
                    }) {
                        Text(number)
                            .frame(width: 29, height: 29)
                            .background(Color.gray)
                            .cornerRadius(5)
                    }
                    .buttonStyle(PlainButtonStyle())
                }
                Button(action: {
                    performOperation { $0 + $1 }
                }) {
                    Text("+")
                        .frame(width: 29, height: 29)
                        .background(Color.blue)
                        .cornerRadius(5)
                        .foregroundColor(.white)
                }
                .buttonStyle(PlainButtonStyle())

                Button(action: {
                    performOperation { $0 - $1 }
                }) {
                    Text("-")
                        .frame(width: 29, height: 29)
                        .background(Color.blue)
                        .cornerRadius(5)
                        .foregroundColor(.white)
                }
                .buttonStyle(PlainButtonStyle())
            }

            HStack {
                ForEach(["4", "5", "6"], id: \.self) { number in
                    Button(action: {
                        currentInput.append(number)
                    }) {
                        Text(number)
                            .frame(width: 29, height: 29)
                            .background(Color.gray)
                            .cornerRadius(5)
                    }
                    .buttonStyle(PlainButtonStyle())
                }
                Button(action: {
                    performOperation { $0 * $1 }
                }) {
                    Text("*")
                        .frame(width: 29, height: 29)
                        .background(Color.blue)
                        .cornerRadius(5)
                        .foregroundColor(.white)
                }
                .buttonStyle(PlainButtonStyle())

                Button(action: {
                    performOperation { $0 / $1 }
                }) {
                    Text("/")
                        .frame(width: 29, height: 29)
                        .background(Color.blue)
                        .cornerRadius(5)
                        .foregroundColor(.white)
                }
                .buttonStyle(PlainButtonStyle())
            }

            HStack {
                ForEach(["1", "2", "3"], id: \.self) { number in
                    Button(action: {
                        currentInput.append(number)
                    }) {
                        Text(number)
                            .frame(width: 29, height: 29)
                            .background(Color.gray)
                            .cornerRadius(5)
                    }
                    .buttonStyle(PlainButtonStyle())
                }
                Button(action: {
                    stack.removeAll()
                }) {
                    Text("Clear")
                        .frame(width: 60, height: 29)
                        .font(.system(size: 14))
                        .background(Color.red)
                        .cornerRadius(5)
                        .foregroundColor(.white)
                }
                .buttonStyle(PlainButtonStyle())
            }

            HStack {
                Button(action: {
                    currentInput.append("0")
                }) {
                    Text("0")
                        .frame(width: 29, height: 29)
                        .background(Color.gray)
                        .cornerRadius(5)
                }
                .buttonStyle(PlainButtonStyle())

                Button(action: {
                    if !currentInput.isEmpty {
                        currentInput.append(".")
                    }
                }) {
                    Text(".")
                        .frame(width: 29, height: 29)
                        .background(Color.gray)
                        .cornerRadius(5)
                }
                .buttonStyle(PlainButtonStyle())

                Button(action: {
                    if let value = Double(currentInput) {
                        stack.append(value)
                        currentInput = ""
                    }
                }) {
                    Text("Push Stack")
                        .frame(width: 90, height: 29)
                        .font(.system(size: 14))
                        .background(Color.green)
                        .cornerRadius(5)
                        .foregroundColor(.white)
                }
                .buttonStyle(PlainButtonStyle())
            }
        }
    }

    private func performOperation(_ operation: (Double, Double) -> Double) {
        if stack.count > 1 {
            let operand2 = stack.removeLast()
            let operand1 = stack.removeLast()
            stack.append(operation(operand1, operand2))
        }
    }

    private func formattedNumber(_ number: Double) -> String {
        if number.truncatingRemainder(dividingBy: 1) == 0 {
            return String(format: "%.0f", number)
        } else {
            return String(number)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
