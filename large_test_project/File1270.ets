@Component
struct TestComponent1270 {
  @State message: string = "Hello from component 1270"

  aboutToAppear() {
    console.log("Component 1270 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
