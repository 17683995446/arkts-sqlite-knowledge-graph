@Component
struct TestComponent1488 {
  @State message: string = "Hello from component 1488"

  aboutToAppear() {
    console.log("Component 1488 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
