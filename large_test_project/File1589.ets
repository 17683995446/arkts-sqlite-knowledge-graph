@Component
struct TestComponent1589 {
  @State message: string = "Hello from component 1589"

  aboutToAppear() {
    console.log("Component 1589 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
