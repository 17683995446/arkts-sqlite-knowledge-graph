@Component
struct TestComponent864 {
  @State message: string = "Hello from component 864"

  aboutToAppear() {
    console.log("Component 864 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
