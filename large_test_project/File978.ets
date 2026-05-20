@Component
struct TestComponent978 {
  @State message: string = "Hello from component 978"

  aboutToAppear() {
    console.log("Component 978 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
