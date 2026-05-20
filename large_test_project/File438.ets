@Component
struct TestComponent438 {
  @State message: string = "Hello from component 438"

  aboutToAppear() {
    console.log("Component 438 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
