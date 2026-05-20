@Component
struct TestComponent471 {
  @State message: string = "Hello from component 471"

  aboutToAppear() {
    console.log("Component 471 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
