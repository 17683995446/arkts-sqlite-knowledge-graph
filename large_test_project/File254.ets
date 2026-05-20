@Component
struct TestComponent254 {
  @State message: string = "Hello from component 254"

  aboutToAppear() {
    console.log("Component 254 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
