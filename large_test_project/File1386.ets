@Component
struct TestComponent1386 {
  @State message: string = "Hello from component 1386"

  aboutToAppear() {
    console.log("Component 1386 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
