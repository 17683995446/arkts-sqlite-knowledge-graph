@Component
struct TestComponent988 {
  @State message: string = "Hello from component 988"

  aboutToAppear() {
    console.log("Component 988 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
