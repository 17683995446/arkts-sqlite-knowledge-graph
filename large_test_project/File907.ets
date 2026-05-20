@Component
struct TestComponent907 {
  @State message: string = "Hello from component 907"

  aboutToAppear() {
    console.log("Component 907 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
