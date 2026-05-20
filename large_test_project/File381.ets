@Component
struct TestComponent381 {
  @State message: string = "Hello from component 381"

  aboutToAppear() {
    console.log("Component 381 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
