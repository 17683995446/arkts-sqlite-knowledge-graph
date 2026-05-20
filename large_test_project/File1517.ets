@Component
struct TestComponent1517 {
  @State message: string = "Hello from component 1517"

  aboutToAppear() {
    console.log("Component 1517 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
