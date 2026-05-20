@Component
struct TestComponent1697 {
  @State message: string = "Hello from component 1697"

  aboutToAppear() {
    console.log("Component 1697 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
