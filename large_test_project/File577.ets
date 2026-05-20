@Component
struct TestComponent577 {
  @State message: string = "Hello from component 577"

  aboutToAppear() {
    console.log("Component 577 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
