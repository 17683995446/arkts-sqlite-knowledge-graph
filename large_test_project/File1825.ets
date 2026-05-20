@Component
struct TestComponent1825 {
  @State message: string = "Hello from component 1825"

  aboutToAppear() {
    console.log("Component 1825 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
