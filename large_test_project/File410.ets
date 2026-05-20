@Component
struct TestComponent410 {
  @State message: string = "Hello from component 410"

  aboutToAppear() {
    console.log("Component 410 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
