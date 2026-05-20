@Component
struct TestComponent1666 {
  @State message: string = "Hello from component 1666"

  aboutToAppear() {
    console.log("Component 1666 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
