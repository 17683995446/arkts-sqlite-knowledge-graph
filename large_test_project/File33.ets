@Component
struct TestComponent33 {
  @State message: string = "Hello from component 33"

  aboutToAppear() {
    console.log("Component 33 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
