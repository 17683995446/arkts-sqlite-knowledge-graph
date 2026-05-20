@Component
struct TestComponent1132 {
  @State message: string = "Hello from component 1132"

  aboutToAppear() {
    console.log("Component 1132 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
