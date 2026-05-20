@Component
struct TestComponent305 {
  @State message: string = "Hello from component 305"

  aboutToAppear() {
    console.log("Component 305 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
