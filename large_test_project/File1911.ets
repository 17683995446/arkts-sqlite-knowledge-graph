@Component
struct TestComponent1911 {
  @State message: string = "Hello from component 1911"

  aboutToAppear() {
    console.log("Component 1911 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
