@Component
struct TestComponent1625 {
  @State message: string = "Hello from component 1625"

  aboutToAppear() {
    console.log("Component 1625 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
