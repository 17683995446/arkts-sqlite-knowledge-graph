@Component
struct TestComponent1621 {
  @State message: string = "Hello from component 1621"

  aboutToAppear() {
    console.log("Component 1621 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
