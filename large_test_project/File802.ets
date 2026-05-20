@Component
struct TestComponent802 {
  @State message: string = "Hello from component 802"

  aboutToAppear() {
    console.log("Component 802 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
