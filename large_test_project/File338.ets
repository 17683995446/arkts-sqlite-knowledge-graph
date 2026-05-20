@Component
struct TestComponent338 {
  @State message: string = "Hello from component 338"

  aboutToAppear() {
    console.log("Component 338 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
