@Component
struct TestComponent1850 {
  @State message: string = "Hello from component 1850"

  aboutToAppear() {
    console.log("Component 1850 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
