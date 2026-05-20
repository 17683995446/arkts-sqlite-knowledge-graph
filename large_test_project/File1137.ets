@Component
struct TestComponent1137 {
  @State message: string = "Hello from component 1137"

  aboutToAppear() {
    console.log("Component 1137 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
