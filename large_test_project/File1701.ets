@Component
struct TestComponent1701 {
  @State message: string = "Hello from component 1701"

  aboutToAppear() {
    console.log("Component 1701 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
