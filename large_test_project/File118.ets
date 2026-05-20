@Component
struct TestComponent118 {
  @State message: string = "Hello from component 118"

  aboutToAppear() {
    console.log("Component 118 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
