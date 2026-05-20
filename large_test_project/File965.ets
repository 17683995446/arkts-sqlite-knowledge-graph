@Component
struct TestComponent965 {
  @State message: string = "Hello from component 965"

  aboutToAppear() {
    console.log("Component 965 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
