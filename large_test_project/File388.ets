@Component
struct TestComponent388 {
  @State message: string = "Hello from component 388"

  aboutToAppear() {
    console.log("Component 388 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
