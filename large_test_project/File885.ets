@Component
struct TestComponent885 {
  @State message: string = "Hello from component 885"

  aboutToAppear() {
    console.log("Component 885 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
