@Component
struct TestComponent32 {
  @State message: string = "Hello from component 32"

  aboutToAppear() {
    console.log("Component 32 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
