@Component
struct TestComponent1752 {
  @State message: string = "Hello from component 1752"

  aboutToAppear() {
    console.log("Component 1752 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
