@Component
struct TestComponent1056 {
  @State message: string = "Hello from component 1056"

  aboutToAppear() {
    console.log("Component 1056 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
