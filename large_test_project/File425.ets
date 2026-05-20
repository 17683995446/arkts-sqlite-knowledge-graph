@Component
struct TestComponent425 {
  @State message: string = "Hello from component 425"

  aboutToAppear() {
    console.log("Component 425 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
