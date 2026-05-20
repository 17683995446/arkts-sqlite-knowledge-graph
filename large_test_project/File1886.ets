@Component
struct TestComponent1886 {
  @State message: string = "Hello from component 1886"

  aboutToAppear() {
    console.log("Component 1886 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
