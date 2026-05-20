@Component
struct TestComponent1817 {
  @State message: string = "Hello from component 1817"

  aboutToAppear() {
    console.log("Component 1817 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
