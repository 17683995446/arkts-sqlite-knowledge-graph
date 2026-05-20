@Component
struct TestComponent737 {
  @State message: string = "Hello from component 737"

  aboutToAppear() {
    console.log("Component 737 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
