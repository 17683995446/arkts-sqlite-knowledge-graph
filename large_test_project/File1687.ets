@Component
struct TestComponent1687 {
  @State message: string = "Hello from component 1687"

  aboutToAppear() {
    console.log("Component 1687 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
