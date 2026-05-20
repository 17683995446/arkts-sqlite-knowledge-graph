@Component
struct TestComponent1561 {
  @State message: string = "Hello from component 1561"

  aboutToAppear() {
    console.log("Component 1561 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
