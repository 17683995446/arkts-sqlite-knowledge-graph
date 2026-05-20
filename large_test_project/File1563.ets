@Component
struct TestComponent1563 {
  @State message: string = "Hello from component 1563"

  aboutToAppear() {
    console.log("Component 1563 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
