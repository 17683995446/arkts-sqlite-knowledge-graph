@Component
struct TestComponent894 {
  @State message: string = "Hello from component 894"

  aboutToAppear() {
    console.log("Component 894 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
