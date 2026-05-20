@Component
struct TestComponent1052 {
  @State message: string = "Hello from component 1052"

  aboutToAppear() {
    console.log("Component 1052 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
