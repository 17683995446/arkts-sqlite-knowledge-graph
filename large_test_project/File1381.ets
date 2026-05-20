@Component
struct TestComponent1381 {
  @State message: string = "Hello from component 1381"

  aboutToAppear() {
    console.log("Component 1381 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
