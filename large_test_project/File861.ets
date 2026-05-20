@Component
struct TestComponent861 {
  @State message: string = "Hello from component 861"

  aboutToAppear() {
    console.log("Component 861 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
