@Component
struct TestComponent345 {
  @State message: string = "Hello from component 345"

  aboutToAppear() {
    console.log("Component 345 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
