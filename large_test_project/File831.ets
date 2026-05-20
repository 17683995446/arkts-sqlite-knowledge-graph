@Component
struct TestComponent831 {
  @State message: string = "Hello from component 831"

  aboutToAppear() {
    console.log("Component 831 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
