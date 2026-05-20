@Component
struct TestComponent858 {
  @State message: string = "Hello from component 858"

  aboutToAppear() {
    console.log("Component 858 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
