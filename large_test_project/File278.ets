@Component
struct TestComponent278 {
  @State message: string = "Hello from component 278"

  aboutToAppear() {
    console.log("Component 278 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
