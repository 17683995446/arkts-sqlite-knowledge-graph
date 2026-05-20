@Component
struct TestComponent603 {
  @State message: string = "Hello from component 603"

  aboutToAppear() {
    console.log("Component 603 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
