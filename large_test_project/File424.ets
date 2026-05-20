@Component
struct TestComponent424 {
  @State message: string = "Hello from component 424"

  aboutToAppear() {
    console.log("Component 424 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
