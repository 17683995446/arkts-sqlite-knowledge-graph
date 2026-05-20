@Component
struct TestComponent1783 {
  @State message: string = "Hello from component 1783"

  aboutToAppear() {
    console.log("Component 1783 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
