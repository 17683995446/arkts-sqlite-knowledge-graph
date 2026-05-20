@Component
struct TestComponent56 {
  @State message: string = "Hello from component 56"

  aboutToAppear() {
    console.log("Component 56 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
