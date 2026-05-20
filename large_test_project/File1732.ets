@Component
struct TestComponent1732 {
  @State message: string = "Hello from component 1732"

  aboutToAppear() {
    console.log("Component 1732 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
