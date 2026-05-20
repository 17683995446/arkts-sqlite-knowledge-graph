@Component
struct TestComponent817 {
  @State message: string = "Hello from component 817"

  aboutToAppear() {
    console.log("Component 817 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
