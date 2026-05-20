@Component
struct TestComponent352 {
  @State message: string = "Hello from component 352"

  aboutToAppear() {
    console.log("Component 352 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
