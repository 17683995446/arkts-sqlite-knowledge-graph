@Component
struct TestComponent1269 {
  @State message: string = "Hello from component 1269"

  aboutToAppear() {
    console.log("Component 1269 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
