@Component
struct TestComponent496 {
  @State message: string = "Hello from component 496"

  aboutToAppear() {
    console.log("Component 496 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
