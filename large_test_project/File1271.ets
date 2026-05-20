@Component
struct TestComponent1271 {
  @State message: string = "Hello from component 1271"

  aboutToAppear() {
    console.log("Component 1271 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
