@Component
struct TestComponent1609 {
  @State message: string = "Hello from component 1609"

  aboutToAppear() {
    console.log("Component 1609 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
