@Component
struct TestComponent1757 {
  @State message: string = "Hello from component 1757"

  aboutToAppear() {
    console.log("Component 1757 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
