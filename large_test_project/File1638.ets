@Component
struct TestComponent1638 {
  @State message: string = "Hello from component 1638"

  aboutToAppear() {
    console.log("Component 1638 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
