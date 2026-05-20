@Component
struct TestComponent332 {
  @State message: string = "Hello from component 332"

  aboutToAppear() {
    console.log("Component 332 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
