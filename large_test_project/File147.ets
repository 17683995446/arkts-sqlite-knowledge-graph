@Component
struct TestComponent147 {
  @State message: string = "Hello from component 147"

  aboutToAppear() {
    console.log("Component 147 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
