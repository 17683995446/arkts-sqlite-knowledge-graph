@Component
struct TestComponent751 {
  @State message: string = "Hello from component 751"

  aboutToAppear() {
    console.log("Component 751 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
