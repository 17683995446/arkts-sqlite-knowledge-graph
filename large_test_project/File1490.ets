@Component
struct TestComponent1490 {
  @State message: string = "Hello from component 1490"

  aboutToAppear() {
    console.log("Component 1490 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
