@Component
struct TestComponent1236 {
  @State message: string = "Hello from component 1236"

  aboutToAppear() {
    console.log("Component 1236 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
