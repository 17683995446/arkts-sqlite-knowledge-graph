@Component
struct TestComponent20 {
  @State message: string = "Hello from component 20"

  aboutToAppear() {
    console.log("Component 20 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
