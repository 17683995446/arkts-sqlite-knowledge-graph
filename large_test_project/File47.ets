@Component
struct TestComponent47 {
  @State message: string = "Hello from component 47"

  aboutToAppear() {
    console.log("Component 47 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
