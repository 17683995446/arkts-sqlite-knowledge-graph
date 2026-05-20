@Component
struct TestComponent706 {
  @State message: string = "Hello from component 706"

  aboutToAppear() {
    console.log("Component 706 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
