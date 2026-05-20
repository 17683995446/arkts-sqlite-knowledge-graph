@Component
struct TestComponent996 {
  @State message: string = "Hello from component 996"

  aboutToAppear() {
    console.log("Component 996 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
