@Component
struct TestComponent821 {
  @State message: string = "Hello from component 821"

  aboutToAppear() {
    console.log("Component 821 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
