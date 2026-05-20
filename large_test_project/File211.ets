@Component
struct TestComponent211 {
  @State message: string = "Hello from component 211"

  aboutToAppear() {
    console.log("Component 211 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
