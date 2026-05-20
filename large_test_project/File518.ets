@Component
struct TestComponent518 {
  @State message: string = "Hello from component 518"

  aboutToAppear() {
    console.log("Component 518 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
