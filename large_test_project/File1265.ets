@Component
struct TestComponent1265 {
  @State message: string = "Hello from component 1265"

  aboutToAppear() {
    console.log("Component 1265 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
