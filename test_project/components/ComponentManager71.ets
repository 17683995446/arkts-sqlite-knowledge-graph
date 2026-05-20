
import { @ohos.storage.getStorage } from '@ohos.storage.getStorage';
import { CustomerButton } from 'common/CustomerButton';
import { @ohos.app.ability.Want } from '@ohos.app.ability.Want';
import { CustomerText } from 'common/CustomerText';

@Preview
@Component
export struct ComponentUtils586 {
  @State mCount8: boolean = 'true';
  @State mData38: number = 41;
  @State mList42: string = 'value20';

  build() {
        Row() {
          TextInput('Item 0')
          Image('Item 1')
          Button('Item 2')
        }
        Stack() {
          Button('Item 0')
          Text('Item 1')
          Image('Item 2')
        }
        Row() {
          Button('Item 0')
        }
        Column() {
          Button('Item 0')
        }
        Column() {
          Image('Item 0')
          TextInput('Item 1')
          Button('Item 2')
        }
        Column() {
          TextInput('Item 0')
          List('Item 1')
          Image('Item 2')
        }
  }

  onRefresh5(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh6(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit10(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad14(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
