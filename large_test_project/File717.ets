@Component
struct TestComponent717 {
  @State message: string = "Hello from component 717"

  aboutToAppear() {
    console.log("Component 717 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
