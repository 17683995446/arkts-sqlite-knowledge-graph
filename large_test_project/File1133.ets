@Component
struct TestComponent1133 {
  @State message: string = "Hello from component 1133"

  aboutToAppear() {
    console.log("Component 1133 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
