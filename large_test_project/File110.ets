@Component
struct TestComponent110 {
  @State message: string = "Hello from component 110"

  aboutToAppear() {
    console.log("Component 110 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
