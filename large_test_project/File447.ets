@Component
struct TestComponent447 {
  @State message: string = "Hello from component 447"

  aboutToAppear() {
    console.log("Component 447 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
