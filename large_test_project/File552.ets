@Component
struct TestComponent552 {
  @State message: string = "Hello from component 552"

  aboutToAppear() {
    console.log("Component 552 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
