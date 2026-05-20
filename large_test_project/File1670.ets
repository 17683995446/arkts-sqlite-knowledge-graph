@Component
struct TestComponent1670 {
  @State message: string = "Hello from component 1670"

  aboutToAppear() {
    console.log("Component 1670 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
