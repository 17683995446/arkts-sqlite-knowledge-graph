@Component
struct TestComponent1806 {
  @State message: string = "Hello from component 1806"

  aboutToAppear() {
    console.log("Component 1806 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
