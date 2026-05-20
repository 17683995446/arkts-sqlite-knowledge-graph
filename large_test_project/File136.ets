@Component
struct TestComponent136 {
  @State message: string = "Hello from component 136"

  aboutToAppear() {
    console.log("Component 136 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
