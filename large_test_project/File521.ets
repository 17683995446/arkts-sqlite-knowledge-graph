@Component
struct TestComponent521 {
  @State message: string = "Hello from component 521"

  aboutToAppear() {
    console.log("Component 521 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
