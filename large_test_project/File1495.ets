@Component
struct TestComponent1495 {
  @State message: string = "Hello from component 1495"

  aboutToAppear() {
    console.log("Component 1495 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
