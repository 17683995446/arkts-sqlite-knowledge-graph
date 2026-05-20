@Component
struct TestComponent290 {
  @State message: string = "Hello from component 290"

  aboutToAppear() {
    console.log("Component 290 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
