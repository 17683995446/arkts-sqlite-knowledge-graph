@Component
struct TestComponent212 {
  @State message: string = "Hello from component 212"

  aboutToAppear() {
    console.log("Component 212 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
