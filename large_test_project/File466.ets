@Component
struct TestComponent466 {
  @State message: string = "Hello from component 466"

  aboutToAppear() {
    console.log("Component 466 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
