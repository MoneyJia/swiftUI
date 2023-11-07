//
//  ContentView.swift
//  02_SwiftUI
//
//  Created by money on 2023/10/23.
//

import SwiftUI


struct ContentView: View {
    
    @State private var text: String = "" // Declare a State variable to store the text input
    @State var textColor = Color.red
    @State private var selectedIndex = 0
    
    @State private var progressValue: Float = 0.5
    
    @State private var isToggleOn = false
    
    @State private var value = 0
    
    @ObservedObject var vm = ViewModel()
    
    @State private var selection = 0
    
    // 定义一个字符串数组，表示选项列表
    let options = ["Option 1", "Option 2", "Option 3", "Option 4"]
    
    let items = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5"]
    
    @State private var showAlert = false
    
    var body: some View {
        VStack {
//            Text("我是一个Text，**Markdown语法加粗了**").foregroundColor(.red)
//            Label("Lightning", systemImage: "bolt.fill")
//            Label("Lightning", systemImage: "bolt.fill")
//                .labelStyle(.titleOnly)
//            Label("Lightning", systemImage: "bolt.fill")
//                .labelStyle(.iconOnly)
//
//            VStack {
//                Label("Rain", systemImage: "cloud.rain")
//                Label("Rain", systemImage: "snow")
//                Label("Rain", systemImage: "sun.max")
//            }.labelStyle(.iconOnly)
//
//            Label {
//                Text("wenyi")
//                    .font(.body)
//                    .foregroundColor(.primary)
//                Text("ya")
//                    .font(.subheadline)
//                    .foregroundColor(.secondary)
//            } icon: {
//                Circle()
//                    .fill(.orange)
//                    .frame(width: 44, height: 44, alignment: .center)
//                    .overlay(Text("园"))
//                    .foregroundColor(.white)
//            }
//
//            Button {
//                print("eeee")
//            } label: {
//                Text("按钮")
//            }
//
//            Link(destination: URL(string: "https://www.baidu.com/")!) {
//                Text("link")
//            }
//
//            Link("什么玩意", destination: URL(string: "https://www.baidu.com/")!)
            
            //设置OpenURLAction
//            Link("Visit Our Site", destination: URL(string: "https://www.baidu.com/")!)
//                .environment(\.openURL, OpenURLAction { url in
//                    print("Open \(url)")
//                    return .handled
//                })
            
//            Link("啊哈哈", destination: URL(string: "https://www.baidu.com/")!)
//                .environment(\.openURL, OpenURLAction{ url in
//                    return .handled
//                })
            
//            Image("worry")
//                .resizable()
//                .aspectRatio(contentMode: .fit)
            
//            UIImage(named: "worry")
            
//            TimelineView(.periodic(from: Date.now, by: 1.0)) { content in
//                Text(content.date.description).font(.title)
//            }
            
            //Canvas
//            Canvas { context, size in
//                context.stroke(Path(ellipseIn: CGRect(origin: .zero, size: size)),with: .color(.blue), lineWidth: 3)
//            }.frame(width: 100, height: 50, alignment: .center).border(.red,width: 2)
            
            //TextEditor
//            TextEditor(text:
//                .constant("Placeholder"))
//                .frame(width: 100, height: 30, alignment: .center)
            
            
            //TextField，预览无法操作
            
//            TextField("首字母默认大写", text: $text).frame(width: 100, height: 56, alignment: .center)
//                .textInputAutocapitalization(.never)
//            //自动纠错
//                .disableAutocorrection(true)
//            //                    .border(.red, width: 1)
//            //                    .cornerRadius(20)
//                .overlay{
//                    RoundedRectangle(cornerRadius: 20)
//                        .stroke(.red, lineWidth: 10)
//                        .padding(-10)
//                }
//                .onSubmit {
//                    print("我点击了！")
//                }
//
//            //            ...
//                .contentShape(Rectangle())//追加热区设置
//                .onTapGesture {
//                    print("tap")
//                    //热区
//                    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
//                }
            
            //ColorPicker
            //supportsOpacity是否设置透明度
//            ColorPicker("picker", selection: $textColor, supportsOpacity: false).font(.largeTitle).foregroundColor(textColor)
            
            

//            // 创建一个Picker，并绑定选择的索引到状态变量
//            Picker("Select an option", selection: $selectedIndex) {
//                ForEach(0..<options.count, id: \.self) {
//                    Text(self.options[$0]) // 显示选项的文本
//                }
//            }
//            .pickerStyle(SegmentedPickerStyle()) // 可以选择不同的样式，比如 SegmentedPickerStyle、WheelPickerStyle 等
//
//            // 显示用户选择的选项
//            Text("You selected: \(options[selectedIndex])")
//
            
//            //设置工具栏
//            NavigationView {
//                Text("Hello World!").navigationTitle("navigation")
//                    .toolbar {
//                        ToolbarItem(placement: .navigationBarLeading) {
//                            Button("Edit") {}
//                        }
//                        ToolbarItem(placement: .navigationBarTrailing) {
//                            Button("back") {}
//                        }
//                    }
//            }
            
//            // 创建一个水平进度条，绑定进度值到状态变量
//            ProgressView(value: progressValue)
//                .progressViewStyle(LinearProgressViewStyle()) // 可以选择不同的样式
//
//            // 通过滑块来调整进度值
//            Slider(value: $progressValue, in: 0...1, step: 0.01)
//                .padding()
            
//            // 创建一个 Toggle，绑定开关状态到状态变量
//            Toggle("Toggle Switch", isOn: $isToggleOn)
//                .padding()
//
//            // 根据开关状态显示不同的文本
//            Text(isToggleOn ? "Switch is ON" : "Switch is OFF")
//                .padding()
        
            
//            Text("Value: \(value)")
//                .font(.largeTitle)
//                .padding()
//
//            Stepper("Stepper", value: $value, in: 0...100, step: 1)
//                .padding()
            
//            //图形渐变
//            //角渐变
//            AngularGradient(gradient: Gradient(colors: [Color.red, Color.blue,.purple,.red]), center: .center)
//
//            //椭圆
//            EllipticalGradient(colors:[Color.blue, Color.green], center: .center, startRadiusFraction: 0.0, endRadiusFraction: 0.5)
//
//            //线性
//            LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing)
//
//            //辐射渐变
//            RadialGradient(gradient: Gradient(colors: [Color.red, Color.blue]), center: .bottomLeading, startRadius: 100, endRadius: 120)
            
//            NavigationView {
//                List {
//                    ForEach(vm.filtedItems) {item in
//                        NavigationLink(item.name, destination:  item.detailView)
//                    }
//                }
//                .navigationTitle(Text("搜索页面"))
//                .searchable(text: $vm.searchedItem, prompt: "输入您想要搜索的省会名称")
//            }
            
            
            
//            List(items, id: \.self) { item in
//                Text(item)
//            }
//            .navigationBarTitle("List Example")
            
            
            
            
//            TabView() {
//                Text("Tab Content 1").tabItem {
//                    Image(systemName: "person")
//                    Text("Tab Label 1")
//                }.tag(1).badge(Text("news"))
//
//                Text("Tab Content 2").tabItem {
//                    Text("Tab Label 2")
//                }.tag(2)
//            }
            
            
            
//            TabView(selection: $selection) {
//                Text("First Tab Content")
//                    .tabItem {
//                        Image(systemName: "1.square.fill")
//                        Text("First Tab")
//                    }
//                    .tag(0) // Tag value for the first tab
//
//                Text("Second Tab Content")
//                    .tabItem {
//                        Image(systemName: "2.square.fill")
//                        Text("Second Tab")
//                    }
//                    .tag(1) // Tag value for the second tab
//            }
//            .navigationBarTitle("TabView Example")
            
            
            
            
//            Text("Long press me!")
//                .padding()
//                .contextMenu {
//                    Button(action: {
//                        // 操作1
//                        print("Action 1 executed!")
//                    }) {
//                        Text("Action 1")
//                        Image(systemName: "star")
//                    }
//
//                    Button(action: {
//                        // 操作2
//                        print("Action 2 executed!")
//                    }) {
//                        Text("Action 2")
//                        Image(systemName: "heart")
//                    }
//                }
            
            
            
//            Menu("Options") {
//                Button("Option 1") {
//                    // 执行操作1
//                    print("Option 1 selected!")
//                }
//                Button("Option 2") {
//                    // 执行操作2
//                    print("Option 2 selected!")
//                }
//                Button("Option 3") {
//                    // 执行操作3
//                    print("Option 3 selected!")
//                }
//            }
//            .padding()
            
            
            
            
//            Form {
//                Text("item1")
//                Text("item2")
//                Text("item3")
//            }
            
            
            
            
//            ScrollViewReader { proxy in
//                Button("gotoBottom"){
//                    proxy.scrollTo(90)
//                }
//                ScrollView(.vertical, showsIndicators: false) {
//                    VStack(alignment: .center, spacing: 10) {
//                        ForEach(0..<100) {
//                            Text("cell \($0)").font(.title)
//                        }
//                        .frame(maxWidth:.infinity)
//                    }
//                }
//            }
            
            
            
            //Alert
            Button("Show Alert") {
                showAlert = true
            }
            .alert(isPresented: $showAlert) {
                Alert(
                    title: Text("Alert Title"),
                    message: Text("This is a message for the user."),
                    primaryButton: .default(Text("OK")) {
                        // 用户点击了OK按钮的操作
                        print("OK button tapped!")
                    },
                    secondaryButton: .cancel()
                )
            }
            .padding()
            
        }
        .padding()
    }
}

//创建一个model项
struct ItemModel: Identifiable {
    var id = UUID()
    var name: String
    var detailView: DetailView
}


//创建一个详情View
struct DetailView: View, Identifiable {
    var id = UUID()
    var detail: String
    @State var text = ""
    var body: some View {
        VStack (alignment: .leading){
            Text(detail).font(.largeTitle).foregroundColor(.gray).bold()
                .searchable(text: $text){
                    Text("大同").searchCompletion("大同")
                    Text("太原").searchCompletion("太原")
                    Text("太原").searchCompletion("太原")
                    Text("太原").searchCompletion("太原")
                    Text("太原").searchCompletion("太原")
                }
            Spacer()
        }
        
    }
}


//定义一个数组
let datas: [ItemModel] = [
    ItemModel(name: "太原", detailView: DetailView(detail: "山西省会")),
    ItemModel(name: "西安", detailView: DetailView(detail: "陕西省会")),
    ItemModel(name: "银川", detailView: DetailView(detail: "宁夏省会")),
    ItemModel(name: "西宁", detailView: DetailView(detail: "青海省会")),
    ItemModel(name: "呼和浩特", detailView: DetailView(detail: "内蒙省会")),
    ItemModel(name: "郑州", detailView: DetailView(detail: "河南省会"))
]


//创建一个viewModel，提供了数组项
//并且还有一个filtedItems用来过滤每一项
class ViewModel: ObservableObject {
    
    @Published var allItems: [ItemModel] = datas
    @Published var searchedItem: String = ""
    
    var filtedItems: [ItemModel] {
        searchedItem.isEmpty ? allItems : allItems.filter({ str in
            str.name.lowercased().contains(searchedItem.lowercased())
        })
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
