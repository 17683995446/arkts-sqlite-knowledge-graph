
import { @ohos.promptAction } from '@ohos.promptAction';
import { @ohos.app.ability.Want } from '@ohos.app.ability.Want';
import { @ohos.app.ability.StartOptions } from '@ohos.app.ability.StartOptions';
import { StringUtils } from 'utils/StringUtils';

@StorageProp
@Component
export struct ComponentHandler176 {
  @State mName27: string = 'value56';
  @State mCount27: number = 7;
  @State mData3: string = 'value95';

  build() {
        Row() {
          Text('Item 0')
          Text('Item 1')
          TextInput('Item 2')
        }
        Stack() {
          Image('Item 0')
          TextInput('Item 1')
        }
        Flex() {
          Text('Item 0')
        }
        Flex() {
          Button('Item 0')
          List('Item 1')
          Button('Item 2')
        }
  }

  onChange4(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad6(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad19(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit8(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit9(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange2(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit4(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit18(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
