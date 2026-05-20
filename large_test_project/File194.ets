@Component
struct TestComponent194 {
  @State message: string = "Hello from component 194"

  aboutToAppear() {
    console.log("Component 194 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
