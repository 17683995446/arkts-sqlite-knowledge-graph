@Component
struct TestComponent1328 {
  @State message: string = "Hello from component 1328"

  aboutToAppear() {
    console.log("Component 1328 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
