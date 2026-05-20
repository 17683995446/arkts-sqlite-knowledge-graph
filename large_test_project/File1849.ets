@Component
struct TestComponent1849 {
  @State message: string = "Hello from component 1849"

  aboutToAppear() {
    console.log("Component 1849 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
