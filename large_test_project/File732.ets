@Component
struct TestComponent732 {
  @State message: string = "Hello from component 732"

  aboutToAppear() {
    console.log("Component 732 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
