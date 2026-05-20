@Component
struct TestComponent1717 {
  @State message: string = "Hello from component 1717"

  aboutToAppear() {
    console.log("Component 1717 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
