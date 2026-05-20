@Component
struct TestComponent395 {
  @State message: string = "Hello from component 395"

  aboutToAppear() {
    console.log("Component 395 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
