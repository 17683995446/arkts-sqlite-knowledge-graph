@Component
struct TestComponent312 {
  @State message: string = "Hello from component 312"

  aboutToAppear() {
    console.log("Component 312 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
