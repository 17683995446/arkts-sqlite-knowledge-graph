@Component
struct TestComponent655 {
  @State message: string = "Hello from component 655"

  aboutToAppear() {
    console.log("Component 655 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
