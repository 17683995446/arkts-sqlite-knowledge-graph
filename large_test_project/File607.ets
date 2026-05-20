@Component
struct TestComponent607 {
  @State message: string = "Hello from component 607"

  aboutToAppear() {
    console.log("Component 607 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
