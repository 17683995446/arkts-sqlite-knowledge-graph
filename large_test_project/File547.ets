@Component
struct TestComponent547 {
  @State message: string = "Hello from component 547"

  aboutToAppear() {
    console.log("Component 547 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
