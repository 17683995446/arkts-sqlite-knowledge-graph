@Component
struct TestComponent752 {
  @State message: string = "Hello from component 752"

  aboutToAppear() {
    console.log("Component 752 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
