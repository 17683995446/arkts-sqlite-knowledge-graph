@Component
struct TestComponent1596 {
  @State message: string = "Hello from component 1596"

  aboutToAppear() {
    console.log("Component 1596 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
