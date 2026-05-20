@Component
struct TestComponent171 {
  @State message: string = "Hello from component 171"

  aboutToAppear() {
    console.log("Component 171 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
