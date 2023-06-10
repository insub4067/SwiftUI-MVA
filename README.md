# SwiftUI-VAS

## 🤔 What and Why?
저만의 아키택쳐인 VAS (View, Action, State) 을 만들어봤습니다.  
MVVM 과 MVI 를 섞은 형태입니다.  
차이라면 MVI 와 같이 Container 에서 Intent, Model 을 들고 있는 것이 아니라  
View 에서 Action 과 Model 을 들고 있는 형태 입니다.  
MVVM 에서 State 와 ViewUpdate 및 Logic 등이 분리된 형태라고 할 수 있습니다.

## 💻 Sample Code
```Swift
struct ContetView: MVA {

  @StateObject var state: State
  let action: Action
  
  var body: some View {
    Vstack {
      TabItem()
        .onTapGetsture {
          action.didTapTabItem(tab: Tab)
        }
      TabView(selection: $state.currentTab) {
        ...
      }
    }
  }
  
  static func build() -> some View {

    let state = ContentViewModel()
    let action = ContentViewAction
        .init(
            model: model
        )

    return ContentView
        .init(
            model: model,
            action: action
        )
    }
}
```
