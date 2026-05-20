@Component
struct TestComponent146 {
  @State message: string = "Hello from component 146"

  aboutToAppear() {
    console.log("Component 146 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
