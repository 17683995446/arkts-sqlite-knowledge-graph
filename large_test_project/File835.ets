@Component
struct TestComponent835 {
  @State message: string = "Hello from component 835"

  aboutToAppear() {
    console.log("Component 835 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
