@Component
struct TestComponent17 {
  @State message: string = "Hello from component 17"

  aboutToAppear() {
    console.log("Component 17 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
