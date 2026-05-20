@Component
struct TestComponent841 {
  @State message: string = "Hello from component 841"

  aboutToAppear() {
    console.log("Component 841 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
