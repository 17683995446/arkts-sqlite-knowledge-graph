@Component
struct TestComponent722 {
  @State message: string = "Hello from component 722"

  aboutToAppear() {
    console.log("Component 722 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
