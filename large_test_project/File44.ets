@Component
struct TestComponent44 {
  @State message: string = "Hello from component 44"

  aboutToAppear() {
    console.log("Component 44 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
