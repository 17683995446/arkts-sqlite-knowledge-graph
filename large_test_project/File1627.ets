@Component
struct TestComponent1627 {
  @State message: string = "Hello from component 1627"

  aboutToAppear() {
    console.log("Component 1627 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
