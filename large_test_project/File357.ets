@Component
struct TestComponent357 {
  @State message: string = "Hello from component 357"

  aboutToAppear() {
    console.log("Component 357 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
