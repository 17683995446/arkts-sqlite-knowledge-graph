@Component
struct TestComponent25 {
  @State message: string = "Hello from component 25"

  aboutToAppear() {
    console.log("Component 25 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
