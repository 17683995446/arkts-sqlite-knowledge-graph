@Component
struct TestComponent1401 {
  @State message: string = "Hello from component 1401"

  aboutToAppear() {
    console.log("Component 1401 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
