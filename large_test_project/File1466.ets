@Component
struct TestComponent1466 {
  @State message: string = "Hello from component 1466"

  aboutToAppear() {
    console.log("Component 1466 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
