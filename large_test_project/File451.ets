@Component
struct TestComponent451 {
  @State message: string = "Hello from component 451"

  aboutToAppear() {
    console.log("Component 451 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
