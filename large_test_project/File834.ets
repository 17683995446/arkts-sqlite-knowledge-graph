@Component
struct TestComponent834 {
  @State message: string = "Hello from component 834"

  aboutToAppear() {
    console.log("Component 834 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
