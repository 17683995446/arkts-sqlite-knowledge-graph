@Component
struct TestComponent6 {
  @State message: string = "Hello from component 6"

  aboutToAppear() {
    console.log("Component 6 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
