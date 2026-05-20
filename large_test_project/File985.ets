@Component
struct TestComponent985 {
  @State message: string = "Hello from component 985"

  aboutToAppear() {
    console.log("Component 985 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
