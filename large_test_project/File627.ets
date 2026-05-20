@Component
struct TestComponent627 {
  @State message: string = "Hello from component 627"

  aboutToAppear() {
    console.log("Component 627 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
