@Component
struct TestComponent842 {
  @State message: string = "Hello from component 842"

  aboutToAppear() {
    console.log("Component 842 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
