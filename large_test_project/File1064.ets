@Component
struct TestComponent1064 {
  @State message: string = "Hello from component 1064"

  aboutToAppear() {
    console.log("Component 1064 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
