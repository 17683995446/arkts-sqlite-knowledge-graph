@Component
struct TestComponent144 {
  @State message: string = "Hello from component 144"

  aboutToAppear() {
    console.log("Component 144 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
