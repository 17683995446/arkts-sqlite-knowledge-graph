@Component
struct TestComponent1413 {
  @State message: string = "Hello from component 1413"

  aboutToAppear() {
    console.log("Component 1413 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
