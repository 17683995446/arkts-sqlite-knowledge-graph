@Component
struct TestComponent1409 {
  @State message: string = "Hello from component 1409"

  aboutToAppear() {
    console.log("Component 1409 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
