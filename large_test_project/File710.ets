@Component
struct TestComponent710 {
  @State message: string = "Hello from component 710"

  aboutToAppear() {
    console.log("Component 710 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
