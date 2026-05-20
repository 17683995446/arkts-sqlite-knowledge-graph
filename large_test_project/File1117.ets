@Component
struct TestComponent1117 {
  @State message: string = "Hello from component 1117"

  aboutToAppear() {
    console.log("Component 1117 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
