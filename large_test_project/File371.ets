@Component
struct TestComponent371 {
  @State message: string = "Hello from component 371"

  aboutToAppear() {
    console.log("Component 371 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
