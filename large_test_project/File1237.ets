@Component
struct TestComponent1237 {
  @State message: string = "Hello from component 1237"

  aboutToAppear() {
    console.log("Component 1237 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
