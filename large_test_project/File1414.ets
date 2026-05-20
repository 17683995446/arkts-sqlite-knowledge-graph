@Component
struct TestComponent1414 {
  @State message: string = "Hello from component 1414"

  aboutToAppear() {
    console.log("Component 1414 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
