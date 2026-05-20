@Component
struct TestComponent561 {
  @State message: string = "Hello from component 561"

  aboutToAppear() {
    console.log("Component 561 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
