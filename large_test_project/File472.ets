@Component
struct TestComponent472 {
  @State message: string = "Hello from component 472"

  aboutToAppear() {
    console.log("Component 472 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
