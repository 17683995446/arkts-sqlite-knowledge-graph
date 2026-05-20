@Component
struct TestComponent315 {
  @State message: string = "Hello from component 315"

  aboutToAppear() {
    console.log("Component 315 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
