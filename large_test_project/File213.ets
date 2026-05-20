@Component
struct TestComponent213 {
  @State message: string = "Hello from component 213"

  aboutToAppear() {
    console.log("Component 213 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
