@Component
struct TestComponent163 {
  @State message: string = "Hello from component 163"

  aboutToAppear() {
    console.log("Component 163 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
