import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView{
            VStack{
                //Header
                HeaderView(title: "To Do List", subTitle: "Get things done", angle: 15, background: .pink)
                
                
                Form{
                    if  !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundStyle(Color(.red))
                    }
                    
                    TextField("Email Adresss", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                    
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButton(title: "Log In", background: .blue)
                    {
                        viewModel.login()
                    }
                    .padding()
                }
                .offset(y:-50)
                
                //Create Account
                VStack{
                    Text("New around here?")
                    NavigationLink("Create An Acoount", destination: RegisterView())
                }
                .padding(.top, 50)
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
