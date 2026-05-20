@Component
struct TestComponent955 {
  @State message: string = "Hello from component 955"

  aboutToAppear() {
    console.log("Component 955 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
