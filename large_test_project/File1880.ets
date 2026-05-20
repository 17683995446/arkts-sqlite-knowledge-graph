@Component
struct TestComponent1880 {
  @State message: string = "Hello from component 1880"

  aboutToAppear() {
    console.log("Component 1880 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
