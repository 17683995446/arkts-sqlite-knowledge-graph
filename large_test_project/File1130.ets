@Component
struct TestComponent1130 {
  @State message: string = "Hello from component 1130"

  aboutToAppear() {
    console.log("Component 1130 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
