@Component
struct TestComponent528 {
  @State message: string = "Hello from component 528"

  aboutToAppear() {
    console.log("Component 528 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
