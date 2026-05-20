@Component
struct TestComponent1357 {
  @State message: string = "Hello from component 1357"

  aboutToAppear() {
    console.log("Component 1357 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
