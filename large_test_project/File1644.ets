@Component
struct TestComponent1644 {
  @State message: string = "Hello from component 1644"

  aboutToAppear() {
    console.log("Component 1644 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
