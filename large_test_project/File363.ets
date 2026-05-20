@Component
struct TestComponent363 {
  @State message: string = "Hello from component 363"

  aboutToAppear() {
    console.log("Component 363 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
