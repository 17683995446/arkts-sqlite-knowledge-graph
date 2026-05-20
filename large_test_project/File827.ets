@Component
struct TestComponent827 {
  @State message: string = "Hello from component 827"

  aboutToAppear() {
    console.log("Component 827 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
