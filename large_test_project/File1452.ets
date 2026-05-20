@Component
struct TestComponent1452 {
  @State message: string = "Hello from component 1452"

  aboutToAppear() {
    console.log("Component 1452 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
