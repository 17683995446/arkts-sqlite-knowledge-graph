@Component
struct TestComponent971 {
  @State message: string = "Hello from component 971"

  aboutToAppear() {
    console.log("Component 971 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
