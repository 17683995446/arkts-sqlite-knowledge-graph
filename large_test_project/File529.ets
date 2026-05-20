@Component
struct TestComponent529 {
  @State message: string = "Hello from component 529"

  aboutToAppear() {
    console.log("Component 529 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
