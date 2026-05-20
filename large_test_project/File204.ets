@Component
struct TestComponent204 {
  @State message: string = "Hello from component 204"

  aboutToAppear() {
    console.log("Component 204 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
