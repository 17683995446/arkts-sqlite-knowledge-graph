@Component
struct TestComponent328 {
  @State message: string = "Hello from component 328"

  aboutToAppear() {
    console.log("Component 328 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
