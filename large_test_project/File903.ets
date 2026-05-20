@Component
struct TestComponent903 {
  @State message: string = "Hello from component 903"

  aboutToAppear() {
    console.log("Component 903 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
