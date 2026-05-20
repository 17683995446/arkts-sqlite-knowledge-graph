@Component
struct TestComponent368 {
  @State message: string = "Hello from component 368"

  aboutToAppear() {
    console.log("Component 368 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
