@Component
struct TestComponent1278 {
  @State message: string = "Hello from component 1278"

  aboutToAppear() {
    console.log("Component 1278 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
