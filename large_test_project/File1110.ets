@Component
struct TestComponent1110 {
  @State message: string = "Hello from component 1110"

  aboutToAppear() {
    console.log("Component 1110 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
