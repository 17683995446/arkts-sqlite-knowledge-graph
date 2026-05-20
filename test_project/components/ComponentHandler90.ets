
import { ArrayUtils } from 'utils/ArrayUtils';
import { CartModel } from 'models/CartModel';
import { @ohos.app.ability.AbilityConstant } from '@ohos.app.ability.AbilityConstant';
import { @ohos.storage.getStorage } from '@ohos.storage.getStorage';
import { @ohos.app.ability.Want } from '@ohos.app.ability.Want';
import { @ohos.hilog } from '@ohos.hilog';
import { @ohos.app.ability.StartOptions } from '@ohos.app.ability.StartOptions';
import { Logger } from 'utils/Logger';

@Preview
@Component
export struct ComponentWidget112 {
  @State mName21: string = 'value64';
  @State mAge23: boolean = 'true';
  @State mData7: number = 0;
  @State mName44: boolean = 'true';
  @State mAge5: string = 'value14';

  build() {
        Column() {
          TextInput('Item 0')
          TextInput('Item 1')
        }
        Row() {
          List('Item 0')
          List('Item 1')
        }
        Stack() {
          Button('Item 0')
        }
        Flex() {
          TextInput('Item 0')
          List('Item 1')
          Button('Item 2')
        }
        Stack() {
          List('Item 0')
          List('Item 1')
          Text('Item 2')
        }
        Flex() {
          TextInput('Item 0')
        }
        Column() {
          Text('Item 0')
          List('Item 1')
        }
  }

  onInit20(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad7(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange1(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
