@Component
struct TestComponent754 {
  @State message: string = "Hello from component 754"

  aboutToAppear() {
    console.log("Component 754 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
