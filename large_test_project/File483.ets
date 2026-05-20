@Component
struct TestComponent483 {
  @State message: string = "Hello from component 483"

  aboutToAppear() {
    console.log("Component 483 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
