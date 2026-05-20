@Component
struct TestComponent246 {
  @State message: string = "Hello from component 246"

  aboutToAppear() {
    console.log("Component 246 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
