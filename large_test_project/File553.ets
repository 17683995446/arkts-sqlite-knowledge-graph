@Component
struct TestComponent553 {
  @State message: string = "Hello from component 553"

  aboutToAppear() {
    console.log("Component 553 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
