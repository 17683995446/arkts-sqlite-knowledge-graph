@Component
struct TestComponent284 {
  @State message: string = "Hello from component 284"

  aboutToAppear() {
    console.log("Component 284 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
