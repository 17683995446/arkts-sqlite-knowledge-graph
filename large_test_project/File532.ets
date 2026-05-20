@Component
struct TestComponent532 {
  @State message: string = "Hello from component 532"

  aboutToAppear() {
    console.log("Component 532 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
