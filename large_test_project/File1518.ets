@Component
struct TestComponent1518 {
  @State message: string = "Hello from component 1518"

  aboutToAppear() {
    console.log("Component 1518 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
