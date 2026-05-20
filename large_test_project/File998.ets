@Component
struct TestComponent998 {
  @State message: string = "Hello from component 998"

  aboutToAppear() {
    console.log("Component 998 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
