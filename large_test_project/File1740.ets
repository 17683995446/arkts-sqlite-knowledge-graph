@Component
struct TestComponent1740 {
  @State message: string = "Hello from component 1740"

  aboutToAppear() {
    console.log("Component 1740 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
