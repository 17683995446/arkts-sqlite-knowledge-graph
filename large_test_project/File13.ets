@Component
struct TestComponent13 {
  @State message: string = "Hello from component 13"

  aboutToAppear() {
    console.log("Component 13 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
