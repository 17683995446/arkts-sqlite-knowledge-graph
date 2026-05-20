@Component
struct TestComponent1771 {
  @State message: string = "Hello from component 1771"

  aboutToAppear() {
    console.log("Component 1771 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
