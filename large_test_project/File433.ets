@Component
struct TestComponent433 {
  @State message: string = "Hello from component 433"

  aboutToAppear() {
    console.log("Component 433 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
