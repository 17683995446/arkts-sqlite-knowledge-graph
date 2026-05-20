@Component
struct TestComponent948 {
  @State message: string = "Hello from component 948"

  aboutToAppear() {
    console.log("Component 948 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
