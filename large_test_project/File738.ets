@Component
struct TestComponent738 {
  @State message: string = "Hello from component 738"

  aboutToAppear() {
    console.log("Component 738 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
