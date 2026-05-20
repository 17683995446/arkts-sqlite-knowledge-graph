@Component
struct TestComponent571 {
  @State message: string = "Hello from component 571"

  aboutToAppear() {
    console.log("Component 571 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
