@Component
struct TestComponent1797 {
  @State message: string = "Hello from component 1797"

  aboutToAppear() {
    console.log("Component 1797 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
