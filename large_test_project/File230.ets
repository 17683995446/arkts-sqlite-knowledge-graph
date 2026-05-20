@Component
struct TestComponent230 {
  @State message: string = "Hello from component 230"

  aboutToAppear() {
    console.log("Component 230 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
