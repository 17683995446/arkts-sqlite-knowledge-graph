
import { StringUtils } from 'utils/StringUtils';
import { @ohos.promptAction } from '@ohos.promptAction';
import { OrderModel } from 'models/OrderModel';
import { ProductModel } from 'models/ProductModel';
import { @ohos.app.ability.Want } from '@ohos.app.ability.Want';
import { @ohos.app.ability.AbilityConstant } from '@ohos.app.ability.AbilityConstant';

@Preview
@Component
export struct ComponentConsumer194 {
  @State mAge19: UserModel[] = 22;
  @State mStatus43: boolean = 'true';

  build() {
        Row() {
          TextInput('Item 0')
          Image('Item 1')
        }
        Flex() {
          Text('Item 0')
        }
        Row() {
          List('Item 0')
          TextInput('Item 1')
          Image('Item 2')
        }
        Column() {
          List('Item 0')
          TextInput('Item 1')
        }
        Column() {
          Button('Item 0')
          Image('Item 1')
          TextInput('Item 2')
        }
        Flex() {
          Button('Item 0')
          Text('Item 1')
        }
        Flex() {
          Image('Item 0')
          Image('Item 1')
        }
        Column() {
          Button('Item 0')
        }
        Stack() {
          Button('Item 0')
          List('Item 1')
          Button('Item 2')
        }
        Stack() {
          TextInput('Item 0')
          Image('Item 1')
          Button('Item 2')
        }
  }

  onLoad16(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange4(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange4(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange2(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh6(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh2(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit14(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick3(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
