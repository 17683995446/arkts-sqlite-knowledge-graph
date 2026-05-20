@Component
struct TestComponent108 {
  @State message: string = "Hello from component 108"

  aboutToAppear() {
    console.log("Component 108 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
