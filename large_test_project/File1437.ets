@Component
struct TestComponent1437 {
  @State message: string = "Hello from component 1437"

  aboutToAppear() {
    console.log("Component 1437 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
