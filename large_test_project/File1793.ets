@Component
struct TestComponent1793 {
  @State message: string = "Hello from component 1793"

  aboutToAppear() {
    console.log("Component 1793 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
