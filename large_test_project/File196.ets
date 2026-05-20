@Component
struct TestComponent196 {
  @State message: string = "Hello from component 196"

  aboutToAppear() {
    console.log("Component 196 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
