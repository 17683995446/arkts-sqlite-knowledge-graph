@Component
struct TestComponent1418 {
  @State message: string = "Hello from component 1418"

  aboutToAppear() {
    console.log("Component 1418 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
