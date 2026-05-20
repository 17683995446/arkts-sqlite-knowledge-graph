@Component
struct TestComponent280 {
  @State message: string = "Hello from component 280"

  aboutToAppear() {
    console.log("Component 280 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
