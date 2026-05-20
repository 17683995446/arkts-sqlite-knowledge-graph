@Component
struct TestComponent1484 {
  @State message: string = "Hello from component 1484"

  aboutToAppear() {
    console.log("Component 1484 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
