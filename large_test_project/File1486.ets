@Component
struct TestComponent1486 {
  @State message: string = "Hello from component 1486"

  aboutToAppear() {
    console.log("Component 1486 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
