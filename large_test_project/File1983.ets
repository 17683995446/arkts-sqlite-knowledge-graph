@Component
struct TestComponent1983 {
  @State message: string = "Hello from component 1983"

  aboutToAppear() {
    console.log("Component 1983 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
