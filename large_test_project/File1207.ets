@Component
struct TestComponent1207 {
  @State message: string = "Hello from component 1207"

  aboutToAppear() {
    console.log("Component 1207 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
