@Component
struct TestComponent1928 {
  @State message: string = "Hello from component 1928"

  aboutToAppear() {
    console.log("Component 1928 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
