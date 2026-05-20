@Component
struct TestComponent808 {
  @State message: string = "Hello from component 808"

  aboutToAppear() {
    console.log("Component 808 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
