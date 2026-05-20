@Component
struct TestComponent812 {
  @State message: string = "Hello from component 812"

  aboutToAppear() {
    console.log("Component 812 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
