@Component
struct TestComponent513 {
  @State message: string = "Hello from component 513"

  aboutToAppear() {
    console.log("Component 513 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
