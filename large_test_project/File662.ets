@Component
struct TestComponent662 {
  @State message: string = "Hello from component 662"

  aboutToAppear() {
    console.log("Component 662 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
