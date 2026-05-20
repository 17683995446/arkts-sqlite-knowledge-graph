@Component
struct TestComponent365 {
  @State message: string = "Hello from component 365"

  aboutToAppear() {
    console.log("Component 365 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
