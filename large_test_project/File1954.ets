@Component
struct TestComponent1954 {
  @State message: string = "Hello from component 1954"

  aboutToAppear() {
    console.log("Component 1954 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
