@Component
struct TestComponent1322 {
  @State message: string = "Hello from component 1322"

  aboutToAppear() {
    console.log("Component 1322 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
