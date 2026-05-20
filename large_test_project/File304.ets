@Component
struct TestComponent304 {
  @State message: string = "Hello from component 304"

  aboutToAppear() {
    console.log("Component 304 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
