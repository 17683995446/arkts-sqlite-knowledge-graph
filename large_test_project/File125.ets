@Component
struct TestComponent125 {
  @State message: string = "Hello from component 125"

  aboutToAppear() {
    console.log("Component 125 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
