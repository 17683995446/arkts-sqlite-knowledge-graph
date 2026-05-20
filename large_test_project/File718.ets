@Component
struct TestComponent718 {
  @State message: string = "Hello from component 718"

  aboutToAppear() {
    console.log("Component 718 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
