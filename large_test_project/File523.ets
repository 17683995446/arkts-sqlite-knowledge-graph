@Component
struct TestComponent523 {
  @State message: string = "Hello from component 523"

  aboutToAppear() {
    console.log("Component 523 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
