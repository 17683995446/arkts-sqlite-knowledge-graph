@Component
struct TestComponent236 {
  @State message: string = "Hello from component 236"

  aboutToAppear() {
    console.log("Component 236 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
