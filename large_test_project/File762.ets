@Component
struct TestComponent762 {
  @State message: string = "Hello from component 762"

  aboutToAppear() {
    console.log("Component 762 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
