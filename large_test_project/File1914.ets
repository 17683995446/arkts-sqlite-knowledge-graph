@Component
struct TestComponent1914 {
  @State message: string = "Hello from component 1914"

  aboutToAppear() {
    console.log("Component 1914 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
