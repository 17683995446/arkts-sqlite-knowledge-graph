@Component
struct TestComponent966 {
  @State message: string = "Hello from component 966"

  aboutToAppear() {
    console.log("Component 966 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
