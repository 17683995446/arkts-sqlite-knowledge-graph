@Component
struct TestComponent1655 {
  @State message: string = "Hello from component 1655"

  aboutToAppear() {
    console.log("Component 1655 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
