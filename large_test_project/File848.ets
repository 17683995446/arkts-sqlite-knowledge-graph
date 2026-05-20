@Component
struct TestComponent848 {
  @State message: string = "Hello from component 848"

  aboutToAppear() {
    console.log("Component 848 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
