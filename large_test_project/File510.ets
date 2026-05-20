@Component
struct TestComponent510 {
  @State message: string = "Hello from component 510"

  aboutToAppear() {
    console.log("Component 510 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
