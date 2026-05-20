@Component
struct TestComponent795 {
  @State message: string = "Hello from component 795"

  aboutToAppear() {
    console.log("Component 795 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
