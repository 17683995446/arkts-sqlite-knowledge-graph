@Component
struct TestComponent396 {
  @State message: string = "Hello from component 396"

  aboutToAppear() {
    console.log("Component 396 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
