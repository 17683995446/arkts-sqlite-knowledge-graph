@Component
struct TestComponent810 {
  @State message: string = "Hello from component 810"

  aboutToAppear() {
    console.log("Component 810 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
