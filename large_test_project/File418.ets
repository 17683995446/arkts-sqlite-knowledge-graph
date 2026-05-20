@Component
struct TestComponent418 {
  @State message: string = "Hello from component 418"

  aboutToAppear() {
    console.log("Component 418 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
