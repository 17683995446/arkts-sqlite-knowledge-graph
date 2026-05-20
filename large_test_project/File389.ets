@Component
struct TestComponent389 {
  @State message: string = "Hello from component 389"

  aboutToAppear() {
    console.log("Component 389 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
