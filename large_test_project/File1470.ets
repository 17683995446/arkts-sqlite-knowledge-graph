@Component
struct TestComponent1470 {
  @State message: string = "Hello from component 1470"

  aboutToAppear() {
    console.log("Component 1470 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
