@Component
struct TestComponent847 {
  @State message: string = "Hello from component 847"

  aboutToAppear() {
    console.log("Component 847 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
