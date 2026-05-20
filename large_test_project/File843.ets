@Component
struct TestComponent843 {
  @State message: string = "Hello from component 843"

  aboutToAppear() {
    console.log("Component 843 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
