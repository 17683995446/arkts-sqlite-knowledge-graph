@Component
struct TestComponent895 {
  @State message: string = "Hello from component 895"

  aboutToAppear() {
    console.log("Component 895 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
