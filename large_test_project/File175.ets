@Component
struct TestComponent175 {
  @State message: string = "Hello from component 175"

  aboutToAppear() {
    console.log("Component 175 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
