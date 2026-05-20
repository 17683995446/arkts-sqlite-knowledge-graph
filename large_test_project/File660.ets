@Component
struct TestComponent660 {
  @State message: string = "Hello from component 660"

  aboutToAppear() {
    console.log("Component 660 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
