@Component
struct TestComponent980 {
  @State message: string = "Hello from component 980"

  aboutToAppear() {
    console.log("Component 980 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
