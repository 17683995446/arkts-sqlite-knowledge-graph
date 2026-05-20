@Component
struct TestComponent422 {
  @State message: string = "Hello from component 422"

  aboutToAppear() {
    console.log("Component 422 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
