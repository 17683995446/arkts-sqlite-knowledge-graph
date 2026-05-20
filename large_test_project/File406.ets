@Component
struct TestComponent406 {
  @State message: string = "Hello from component 406"

  aboutToAppear() {
    console.log("Component 406 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
