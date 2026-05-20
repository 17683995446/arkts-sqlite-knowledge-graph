@Component
struct TestComponent1111 {
  @State message: string = "Hello from component 1111"

  aboutToAppear() {
    console.log("Component 1111 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
