@Component
struct TestComponent1622 {
  @State message: string = "Hello from component 1622"

  aboutToAppear() {
    console.log("Component 1622 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
