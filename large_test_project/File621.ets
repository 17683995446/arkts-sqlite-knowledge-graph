@Component
struct TestComponent621 {
  @State message: string = "Hello from component 621"

  aboutToAppear() {
    console.log("Component 621 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
