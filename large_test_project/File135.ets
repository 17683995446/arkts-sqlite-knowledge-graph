@Component
struct TestComponent135 {
  @State message: string = "Hello from component 135"

  aboutToAppear() {
    console.log("Component 135 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
