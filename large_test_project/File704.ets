@Component
struct TestComponent704 {
  @State message: string = "Hello from component 704"

  aboutToAppear() {
    console.log("Component 704 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
