@Component
struct TestComponent926 {
  @State message: string = "Hello from component 926"

  aboutToAppear() {
    console.log("Component 926 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
