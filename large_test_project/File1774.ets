@Component
struct TestComponent1774 {
  @State message: string = "Hello from component 1774"

  aboutToAppear() {
    console.log("Component 1774 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
