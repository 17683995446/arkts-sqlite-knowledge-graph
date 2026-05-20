@Component
struct TestComponent473 {
  @State message: string = "Hello from component 473"

  aboutToAppear() {
    console.log("Component 473 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
