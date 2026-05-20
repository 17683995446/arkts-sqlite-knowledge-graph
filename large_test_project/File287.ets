@Component
struct TestComponent287 {
  @State message: string = "Hello from component 287"

  aboutToAppear() {
    console.log("Component 287 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
