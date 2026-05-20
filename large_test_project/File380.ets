@Component
struct TestComponent380 {
  @State message: string = "Hello from component 380"

  aboutToAppear() {
    console.log("Component 380 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
