@Component
struct TestComponent1820 {
  @State message: string = "Hello from component 1820"

  aboutToAppear() {
    console.log("Component 1820 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
