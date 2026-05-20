@Component
struct TestComponent342 {
  @State message: string = "Hello from component 342"

  aboutToAppear() {
    console.log("Component 342 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
