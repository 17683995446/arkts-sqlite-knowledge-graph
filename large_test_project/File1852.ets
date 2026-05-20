@Component
struct TestComponent1852 {
  @State message: string = "Hello from component 1852"

  aboutToAppear() {
    console.log("Component 1852 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
