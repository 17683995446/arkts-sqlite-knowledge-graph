@Component
struct TestComponent1884 {
  @State message: string = "Hello from component 1884"

  aboutToAppear() {
    console.log("Component 1884 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
