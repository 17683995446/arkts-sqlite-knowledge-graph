@Component
struct TestComponent636 {
  @State message: string = "Hello from component 636"

  aboutToAppear() {
    console.log("Component 636 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
