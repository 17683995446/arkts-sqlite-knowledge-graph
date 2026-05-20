@Component
struct TestComponent292 {
  @State message: string = "Hello from component 292"

  aboutToAppear() {
    console.log("Component 292 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
