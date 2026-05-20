@Component
struct TestComponent1344 {
  @State message: string = "Hello from component 1344"

  aboutToAppear() {
    console.log("Component 1344 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
