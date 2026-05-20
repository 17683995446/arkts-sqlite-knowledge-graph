@Component
struct TestComponent893 {
  @State message: string = "Hello from component 893"

  aboutToAppear() {
    console.log("Component 893 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
