@Component
struct TestComponent597 {
  @State message: string = "Hello from component 597"

  aboutToAppear() {
    console.log("Component 597 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
