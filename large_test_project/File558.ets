@Component
struct TestComponent558 {
  @State message: string = "Hello from component 558"

  aboutToAppear() {
    console.log("Component 558 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
