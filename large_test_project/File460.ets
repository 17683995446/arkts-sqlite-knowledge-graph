@Component
struct TestComponent460 {
  @State message: string = "Hello from component 460"

  aboutToAppear() {
    console.log("Component 460 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
