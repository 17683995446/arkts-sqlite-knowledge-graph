@Component
struct TestComponent81 {
  @State message: string = "Hello from component 81"

  aboutToAppear() {
    console.log("Component 81 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
