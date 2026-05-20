@Component
struct TestComponent814 {
  @State message: string = "Hello from component 814"

  aboutToAppear() {
    console.log("Component 814 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
