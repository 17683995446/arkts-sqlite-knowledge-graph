@Component
struct TestComponent1220 {
  @State message: string = "Hello from component 1220"

  aboutToAppear() {
    console.log("Component 1220 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
