@Component
struct TestComponent343 {
  @State message: string = "Hello from component 343"

  aboutToAppear() {
    console.log("Component 343 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
