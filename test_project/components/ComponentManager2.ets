
import { AuthService } from 'services/AuthService';
import { CartModel } from 'models/CartModel';
import { ArrayUtils } from 'utils/ArrayUtils';
import { @ohos.hilog } from '@ohos.hilog';
import { @ohos.app.ability.Ability } from '@ohos.app.ability.Ability';
import { @ohos.storage.Storage } from '@ohos.storage.Storage';
import { @ohos.app.ability.StartOptions } from '@ohos.app.ability.StartOptions';
import { @ohos.storage.getStorage } from '@ohos.storage.getStorage';

@Preview
@Component
export struct ComponentManager415 {
  @State mAge4: boolean = 'true';
  @State mList32: number = 41;
  @State mCount25: number = 83;
  @State mData17: string = 'value50';
  @State mAge22: boolean = 'true';

  build() {
        Row() {
          Text('Item 0')
          List('Item 1')
          Text('Item 2')
        }
        Stack() {
          TextInput('Item 0')
          TextInput('Item 1')
          List('Item 2')
        }
        Stack() {
          Button('Item 0')
          List('Item 1')
        }
        Flex() {
          Image('Item 0')
          Image('Item 1')
        }
        Stack() {
          Button('Item 0')
          TextInput('Item 1')
          Image('Item 2')
        }
        Column() {
          TextInput('Item 0')
          Image('Item 1')
        }
        Column() {
          TextInput('Item 0')
          Text('Item 1')
        }
        Row() {
          List('Item 0')
        }
        Row() {
          Button('Item 0')
          TextInput('Item 1')
        }
        Flex() {
          List('Item 0')
          Text('Item 1')
          List('Item 2')
        }
  }

  onInit14(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad4(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick16(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick9(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange16(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit19(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick1(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit13(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
