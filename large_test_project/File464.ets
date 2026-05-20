@Component
struct TestComponent464 {
  @State message: string = "Hello from component 464"

  aboutToAppear() {
    console.log("Component 464 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
