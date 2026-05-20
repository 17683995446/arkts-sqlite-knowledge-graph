@Component
struct TestComponent1756 {
  @State message: string = "Hello from component 1756"

  aboutToAppear() {
    console.log("Component 1756 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
