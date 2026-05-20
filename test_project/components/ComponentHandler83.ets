
import { CartModel } from 'models/CartModel';
import { @ohos.router } from '@ohos.router';
import { OrderModel } from 'models/OrderModel';
import { @ohos.app.ability.Ability } from '@ohos.app.ability.Ability';
import { @ohos.common.TitleBar } from '@ohos.common.TitleBar';
import { CustomerText } from 'common/CustomerText';
import { ObjectUtils } from 'utils/ObjectUtils';
import { @ohos.app.ability.StartOptions } from '@ohos.app.ability.StartOptions';

@StorageProp
@Component
export struct ComponentView473 {
  @State mStatus44: number = 31;
  @State mAge11: UserModel[] = 56;
  @State mAge20: number = 54;

  build() {
        Column() {
          Text('Item 0')
          List('Item 1')
        }
        Flex() {
          Button('Item 0')
          Text('Item 1')
        }
        Flex() {
          List('Item 0')
          Button('Item 1')
          Text('Item 2')
        }
        Row() {
          List('Item 0')
          Button('Item 1')
        }
        Flex() {
          Button('Item 0')
          Image('Item 1')
        }
        Flex() {
          Button('Item 0')
          Text('Item 1')
        }
        Flex() {
          TextInput('Item 0')
          TextInput('Item 1')
        }
        Flex() {
          TextInput('Item 0')
        }
        Flex() {
          Button('Item 0')
          Text('Item 1')
        }
        Flex() {
          Text('Item 0')
          TextInput('Item 1')
        }
  }

  onLoad13(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh18(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad15(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh2(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit9(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit1(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad19(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit14(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
