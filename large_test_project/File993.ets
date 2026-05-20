@Component
struct TestComponent993 {
  @State message: string = "Hello from component 993"

  aboutToAppear() {
    console.log("Component 993 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
