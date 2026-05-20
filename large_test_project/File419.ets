@Component
struct TestComponent419 {
  @State message: string = "Hello from component 419"

  aboutToAppear() {
    console.log("Component 419 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
