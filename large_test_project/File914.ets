@Component
struct TestComponent914 {
  @State message: string = "Hello from component 914"

  aboutToAppear() {
    console.log("Component 914 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
