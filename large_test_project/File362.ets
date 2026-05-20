@Component
struct TestComponent362 {
  @State message: string = "Hello from component 362"

  aboutToAppear() {
    console.log("Component 362 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
