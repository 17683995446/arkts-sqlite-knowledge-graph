@Component
struct TestComponent975 {
  @State message: string = "Hello from component 975"

  aboutToAppear() {
    console.log("Component 975 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
