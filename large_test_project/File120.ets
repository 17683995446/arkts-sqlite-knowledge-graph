@Component
struct TestComponent120 {
  @State message: string = "Hello from component 120"

  aboutToAppear() {
    console.log("Component 120 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
