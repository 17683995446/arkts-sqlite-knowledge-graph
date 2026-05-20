@Component
struct TestComponent260 {
  @State message: string = "Hello from component 260"

  aboutToAppear() {
    console.log("Component 260 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
