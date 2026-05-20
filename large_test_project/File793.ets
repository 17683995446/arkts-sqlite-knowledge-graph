@Component
struct TestComponent793 {
  @State message: string = "Hello from component 793"

  aboutToAppear() {
    console.log("Component 793 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
