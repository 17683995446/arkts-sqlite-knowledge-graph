@Component
struct TestComponent394 {
  @State message: string = "Hello from component 394"

  aboutToAppear() {
    console.log("Component 394 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
