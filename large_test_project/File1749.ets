@Component
struct TestComponent1749 {
  @State message: string = "Hello from component 1749"

  aboutToAppear() {
    console.log("Component 1749 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
