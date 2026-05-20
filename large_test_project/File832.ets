@Component
struct TestComponent832 {
  @State message: string = "Hello from component 832"

  aboutToAppear() {
    console.log("Component 832 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
