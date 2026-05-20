@Component
struct TestComponent486 {
  @State message: string = "Hello from component 486"

  aboutToAppear() {
    console.log("Component 486 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
