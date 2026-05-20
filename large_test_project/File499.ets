@Component
struct TestComponent499 {
  @State message: string = "Hello from component 499"

  aboutToAppear() {
    console.log("Component 499 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
