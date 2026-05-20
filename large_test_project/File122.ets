@Component
struct TestComponent122 {
  @State message: string = "Hello from component 122"

  aboutToAppear() {
    console.log("Component 122 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
