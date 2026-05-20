@Component
struct TestComponent1733 {
  @State message: string = "Hello from component 1733"

  aboutToAppear() {
    console.log("Component 1733 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
