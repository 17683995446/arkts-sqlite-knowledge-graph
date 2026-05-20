@Component
struct TestComponent325 {
  @State message: string = "Hello from component 325"

  aboutToAppear() {
    console.log("Component 325 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
