@Component
struct TestComponent21 {
  @State message: string = "Hello from component 21"

  aboutToAppear() {
    console.log("Component 21 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
