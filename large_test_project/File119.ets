@Component
struct TestComponent119 {
  @State message: string = "Hello from component 119"

  aboutToAppear() {
    console.log("Component 119 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
