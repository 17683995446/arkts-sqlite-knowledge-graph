@Component
struct TestComponent1805 {
  @State message: string = "Hello from component 1805"

  aboutToAppear() {
    console.log("Component 1805 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
