@Component
struct TestComponent999 {
  @State message: string = "Hello from component 999"

  aboutToAppear() {
    console.log("Component 999 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
