@Component
struct TestComponent1434 {
  @State message: string = "Hello from component 1434"

  aboutToAppear() {
    console.log("Component 1434 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
