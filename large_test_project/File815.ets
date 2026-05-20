@Component
struct TestComponent815 {
  @State message: string = "Hello from component 815"

  aboutToAppear() {
    console.log("Component 815 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
