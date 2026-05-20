@Component
struct TestComponent1453 {
  @State message: string = "Hello from component 1453"

  aboutToAppear() {
    console.log("Component 1453 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
