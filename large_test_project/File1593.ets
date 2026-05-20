@Component
struct TestComponent1593 {
  @State message: string = "Hello from component 1593"

  aboutToAppear() {
    console.log("Component 1593 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
