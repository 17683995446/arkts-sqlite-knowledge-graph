@Component
struct TestComponent1879 {
  @State message: string = "Hello from component 1879"

  aboutToAppear() {
    console.log("Component 1879 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
