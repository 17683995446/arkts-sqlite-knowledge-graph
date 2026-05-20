@Component
struct TestComponent457 {
  @State message: string = "Hello from component 457"

  aboutToAppear() {
    console.log("Component 457 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
