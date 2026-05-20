@Component
struct TestComponent1542 {
  @State message: string = "Hello from component 1542"

  aboutToAppear() {
    console.log("Component 1542 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
