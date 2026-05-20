@Component
struct TestComponent308 {
  @State message: string = "Hello from component 308"

  aboutToAppear() {
    console.log("Component 308 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
