@Component
struct TestComponent1085 {
  @State message: string = "Hello from component 1085"

  aboutToAppear() {
    console.log("Component 1085 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
