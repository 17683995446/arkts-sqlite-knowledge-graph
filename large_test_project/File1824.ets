@Component
struct TestComponent1824 {
  @State message: string = "Hello from component 1824"

  aboutToAppear() {
    console.log("Component 1824 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
