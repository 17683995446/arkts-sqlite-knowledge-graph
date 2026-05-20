@Component
struct TestComponent1104 {
  @State message: string = "Hello from component 1104"

  aboutToAppear() {
    console.log("Component 1104 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
