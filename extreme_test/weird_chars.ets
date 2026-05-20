@Entry
@Component
struct WeirdChars {
  @State weirdText: string = '!@#$%^&*()_+[]{}|;:,.<>?~';
  
  build() {
    Text(this.weirdText)
  }
}
