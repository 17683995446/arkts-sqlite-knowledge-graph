@Component
struct TestComponent678 {
  @State message: string = "Hello from component 678"

  aboutToAppear() {
    console.log("Component 678 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
