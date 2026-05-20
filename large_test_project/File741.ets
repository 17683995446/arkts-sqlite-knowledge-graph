@Component
struct TestComponent741 {
  @State message: string = "Hello from component 741"

  aboutToAppear() {
    console.log("Component 741 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
