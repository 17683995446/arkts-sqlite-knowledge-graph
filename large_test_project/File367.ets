@Component
struct TestComponent367 {
  @State message: string = "Hello from component 367"

  aboutToAppear() {
    console.log("Component 367 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
