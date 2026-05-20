@Component
struct TestComponent193 {
  @State message: string = "Hello from component 193"

  aboutToAppear() {
    console.log("Component 193 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
