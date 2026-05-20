@Component
struct TestComponent1392 {
  @State message: string = "Hello from component 1392"

  aboutToAppear() {
    console.log("Component 1392 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
