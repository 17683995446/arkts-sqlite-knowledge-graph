@Component
struct TestComponent709 {
  @State message: string = "Hello from component 709"

  aboutToAppear() {
    console.log("Component 709 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
