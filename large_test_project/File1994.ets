@Component
struct TestComponent1994 {
  @State message: string = "Hello from component 1994"

  aboutToAppear() {
    console.log("Component 1994 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
