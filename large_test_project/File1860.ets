@Component
struct TestComponent1860 {
  @State message: string = "Hello from component 1860"

  aboutToAppear() {
    console.log("Component 1860 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
