@Component
struct TestComponent443 {
  @State message: string = "Hello from component 443"

  aboutToAppear() {
    console.log("Component 443 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
