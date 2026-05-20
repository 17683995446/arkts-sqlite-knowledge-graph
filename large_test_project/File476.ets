@Component
struct TestComponent476 {
  @State message: string = "Hello from component 476"

  aboutToAppear() {
    console.log("Component 476 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
