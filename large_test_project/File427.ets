@Component
struct TestComponent427 {
  @State message: string = "Hello from component 427"

  aboutToAppear() {
    console.log("Component 427 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
