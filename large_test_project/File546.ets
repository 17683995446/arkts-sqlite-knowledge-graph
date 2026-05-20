@Component
struct TestComponent546 {
  @State message: string = "Hello from component 546"

  aboutToAppear() {
    console.log("Component 546 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
