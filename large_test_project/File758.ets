@Component
struct TestComponent758 {
  @State message: string = "Hello from component 758"

  aboutToAppear() {
    console.log("Component 758 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
