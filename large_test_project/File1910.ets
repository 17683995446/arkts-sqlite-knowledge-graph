@Component
struct TestComponent1910 {
  @State message: string = "Hello from component 1910"

  aboutToAppear() {
    console.log("Component 1910 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
