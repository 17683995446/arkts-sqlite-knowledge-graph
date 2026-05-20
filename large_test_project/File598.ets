@Component
struct TestComponent598 {
  @State message: string = "Hello from component 598"

  aboutToAppear() {
    console.log("Component 598 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
