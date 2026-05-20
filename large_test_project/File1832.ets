@Component
struct TestComponent1832 {
  @State message: string = "Hello from component 1832"

  aboutToAppear() {
    console.log("Component 1832 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
