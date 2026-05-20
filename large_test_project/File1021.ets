@Component
struct TestComponent1021 {
  @State message: string = "Hello from component 1021"

  aboutToAppear() {
    console.log("Component 1021 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
