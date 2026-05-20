@Component
struct TestComponent1630 {
  @State message: string = "Hello from component 1630"

  aboutToAppear() {
    console.log("Component 1630 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
