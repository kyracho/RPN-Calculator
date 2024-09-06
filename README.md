# RPN-Calculator

Hello, welcome. I hope you will like it here.

After coding this RPN calculator, I discovered that there are already existing RPN calculator apps for the Apple Watch. For that reason, you probably won't find this specific app on the Apple Store. 


<img width="245" alt="Screenshot 2024-08-26 at 6 16 19 PM" src="https://github.com/user-attachments/assets/36d1f15d-f0f8-4cc9-993e-174877eac56a">


- "Push" adds the current input onto the stack.
- "Clear" clears the current input and the stack.
- "Del" clears the most recent digit from the current input.
- "+", "-", "*", and "/" operate on the last two numbers in the stack and replace them with the result. 

___
### Build the RPN Calculator Watch App on Your Own Apple Watch

Follow these steps to build and run the **RPN Calculator** app on your Apple Watch.

#### Step 1: Clone the Repository Locally
First, clone the repository to your local machine:
```bash
git clone https://github.com/kyracho/RPN-Calculator.git
```
Navigate into the project directory:
```bash
cd RPN-Calculator
```

#### Step 2: Open the Project in Xcode
1. Make sure you have the latest version of Xcode installed. You can download Xcode from the Mac App Store.
2. Open the project in Xcode by double-clicking the `.xcodeproj` file, or run the following in your terminal:
   ```bash
   open RPN Calculator.xcodeproj
   ```
   This will launch Xcode with the project ready to be built.

#### Step 3: Ensure the `RPN.png` File is in the Assets Folder
Confirm that the app icon file (`RPN.png`) is correctly placed in the assets folder:
```
RPN Calculator Watch App/Assets/AppIconset
```
This ensures the correct icon is displayed on your Apple Watch.

#### Step 4: Set Up Your Apple Watch for Development
Before deploying the app to your Apple Watch, follow these steps to configure your device:

1. **Pair Your Apple Watch and iPhone**:
   - Make sure your iPhone and Apple Watch are paired.
   - Connect your iPhone to your Mac via cable or Wi-Fi.

2. **Add Your Apple ID to Xcode**:
   - In Xcode, go to `Xcode > Settings > Accounts`.
   - Click the "+" button to add your Apple ID if it’s not already added.
   - Set your development team in the `Signing & Capabilities` tab of the project.

3. **Enable Developer Mode on Your Apple Watch**:
   - On your iPhone, go to the Watch app and navigate to `General > Developer` to enable Developer Mode on your Apple Watch.

#### Step 5: Select Your Apple Watch and Run the App
1. In Xcode, click the device dropdown next to the "Run" button in the toolbar.
2. Select your Apple Watch from the list of available devices.
3. **Build and Run** the project by pressing the "Run" button (`Cmd + R`).

Xcode will compile the project, install the app on your Apple Watch, and automatically launch it.

#### Step 6: Enjoy the RPN Calculator App!
Once installed, you can start using the **RPN Calculator** app directly from your Apple Watch. Explore and enjoy the features of the my app!
