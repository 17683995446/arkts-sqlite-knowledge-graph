@Component
struct TestComponent720 {
  @State message: string = "Hello from component 720"

  aboutToAppear() {
    console.log("Component 720 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
