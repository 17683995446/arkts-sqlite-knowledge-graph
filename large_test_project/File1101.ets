@Component
struct TestComponent1101 {
  @State message: string = "Hello from component 1101"

  aboutToAppear() {
    console.log("Component 1101 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
