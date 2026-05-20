@Component
struct TestComponent268 {
  @State message: string = "Hello from component 268"

  aboutToAppear() {
    console.log("Component 268 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
