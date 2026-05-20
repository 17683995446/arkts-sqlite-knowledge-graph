@Component
struct TestComponent856 {
  @State message: string = "Hello from component 856"

  aboutToAppear() {
    console.log("Component 856 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
