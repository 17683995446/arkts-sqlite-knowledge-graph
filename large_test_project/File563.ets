@Component
struct TestComponent563 {
  @State message: string = "Hello from component 563"

  aboutToAppear() {
    console.log("Component 563 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
