@Component
struct TestComponent622 {
  @State message: string = "Hello from component 622"

  aboutToAppear() {
    console.log("Component 622 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
