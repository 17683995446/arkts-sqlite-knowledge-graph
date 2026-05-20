@Component
struct TestComponent912 {
  @State message: string = "Hello from component 912"

  aboutToAppear() {
    console.log("Component 912 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
