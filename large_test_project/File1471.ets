@Component
struct TestComponent1471 {
  @State message: string = "Hello from component 1471"

  aboutToAppear() {
    console.log("Component 1471 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
