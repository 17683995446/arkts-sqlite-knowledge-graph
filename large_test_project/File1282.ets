@Component
struct TestComponent1282 {
  @State message: string = "Hello from component 1282"

  aboutToAppear() {
    console.log("Component 1282 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
