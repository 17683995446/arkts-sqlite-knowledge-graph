@Component
struct TestComponent1794 {
  @State message: string = "Hello from component 1794"

  aboutToAppear() {
    console.log("Component 1794 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
