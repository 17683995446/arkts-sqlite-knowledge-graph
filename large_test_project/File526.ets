@Component
struct TestComponent526 {
  @State message: string = "Hello from component 526"

  aboutToAppear() {
    console.log("Component 526 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
