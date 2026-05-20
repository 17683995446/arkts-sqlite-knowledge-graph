@Component
struct TestComponent939 {
  @State message: string = "Hello from component 939"

  aboutToAppear() {
    console.log("Component 939 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
