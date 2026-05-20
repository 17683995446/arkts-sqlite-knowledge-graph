@Component
struct TestComponent575 {
  @State message: string = "Hello from component 575"

  aboutToAppear() {
    console.log("Component 575 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
