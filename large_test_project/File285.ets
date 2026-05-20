@Component
struct TestComponent285 {
  @State message: string = "Hello from component 285"

  aboutToAppear() {
    console.log("Component 285 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
