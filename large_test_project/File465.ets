@Component
struct TestComponent465 {
  @State message: string = "Hello from component 465"

  aboutToAppear() {
    console.log("Component 465 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
