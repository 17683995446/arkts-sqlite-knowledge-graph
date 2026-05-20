@Component
struct TestComponent353 {
  @State message: string = "Hello from component 353"

  aboutToAppear() {
    console.log("Component 353 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
