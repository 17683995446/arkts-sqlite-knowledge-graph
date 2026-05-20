@Component
struct TestComponent3 {
  @State message: string = "Hello from component 3"

  aboutToAppear() {
    console.log("Component 3 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
